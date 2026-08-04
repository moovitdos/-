package com.kosherjava.zmanim.hebrewcalendar;

/* loaded from: classes.dex */
public class TefilaRules {
    private boolean tachanunRecitedEndOfTishrei = true;
    private boolean tachanunRecitedWeekAfterShavuos = false;
    private boolean tachanunRecited13SivanOutOfIsrael = true;
    private boolean tachanunRecitedPesachSheni = false;
    private boolean tachanunRecited15IyarOutOfIsrael = true;
    private boolean tachanunRecitedMinchaErevLagBaomer = false;
    private boolean tachanunRecitedShivasYemeiHamiluim = true;
    private boolean tachanunRecitedWeekOfHod = true;
    private boolean tachanunRecitedWeekOfPurim = true;
    private boolean tachanunRecitedFridays = true;
    private boolean tachanunRecitedSundays = true;
    private boolean tachanunRecitedMinchaAllYear = true;

    public boolean isTachanunRecitedShacharis(JewishCalendar jewishCalendar) {
        int holidayIndex = jewishCalendar.getYomTovIndex();
        int day = jewishCalendar.getJewishDayOfMonth();
        int month = jewishCalendar.getJewishMonth();
        if (jewishCalendar.getDayOfWeek() != 7) {
            if (this.tachanunRecitedSundays || jewishCalendar.getDayOfWeek() != 1) {
                if ((this.tachanunRecitedFridays || jewishCalendar.getDayOfWeek() != 6) && month != 1) {
                    if (month == 7) {
                        if (!this.tachanunRecitedEndOfTishrei && day > 8) {
                            return false;
                        }
                        if (this.tachanunRecitedEndOfTishrei && day > 8 && day < 22) {
                            return false;
                        }
                    }
                    if (month == 3) {
                        if (this.tachanunRecitedWeekAfterShavuos && day < 7) {
                            return false;
                        }
                        if (!this.tachanunRecitedWeekAfterShavuos) {
                            if (day < ((jewishCalendar.getInIsrael() || this.tachanunRecited13SivanOutOfIsrael) ? 13 : 14)) {
                                return false;
                            }
                        }
                    }
                    if (jewishCalendar.isYomTov()) {
                        if (!jewishCalendar.isTaanis()) {
                            return false;
                        }
                        if (!this.tachanunRecitedPesachSheni && holidayIndex == 3) {
                            return false;
                        }
                    }
                    if ((jewishCalendar.getInIsrael() || this.tachanunRecitedPesachSheni || this.tachanunRecited15IyarOutOfIsrael || jewishCalendar.getJewishMonth() != 2 || day != 15) && holidayIndex != 7 && !jewishCalendar.isIsruChag() && !jewishCalendar.isRoshChodesh()) {
                        if (this.tachanunRecitedShivasYemeiHamiluim || (((jewishCalendar.isJewishLeapYear() || month != 12) && (!jewishCalendar.isJewishLeapYear() || month != 13)) || day <= 22)) {
                            if (this.tachanunRecitedWeekOfPurim || (((jewishCalendar.isJewishLeapYear() || month != 12) && (!jewishCalendar.isJewishLeapYear() || month != 13)) || day <= 10 || day >= 18)) {
                                if (jewishCalendar.isUseModernHolidays() && (holidayIndex == 31 || holidayIndex == 32)) {
                                    return false;
                                }
                                return this.tachanunRecitedWeekOfHod || month != 2 || day <= 13 || day >= 21;
                            }
                            return false;
                        }
                        return false;
                    }
                    return false;
                }
                return false;
            }
            return false;
        }
        return false;
    }

    public boolean isTachanunRecitedMincha(JewishCalendar jewishCalendar) {
        new JewishCalendar();
        JewishCalendar tomorrow = (JewishCalendar) jewishCalendar.clone();
        tomorrow.forward(5, 1);
        if (this.tachanunRecitedMinchaAllYear && jewishCalendar.getDayOfWeek() != 6 && isTachanunRecitedShacharis(jewishCalendar)) {
            if (isTachanunRecitedShacharis(tomorrow) || tomorrow.getYomTovIndex() == 9 || tomorrow.getYomTovIndex() == 12 || tomorrow.getYomTovIndex() == 3) {
                return this.tachanunRecitedMinchaErevLagBaomer || tomorrow.getYomTovIndex() != 33;
            }
            return false;
        }
        return false;
    }

    public boolean isVeseinTalUmatarStartDate(JewishCalendar jewishCalendar) {
        if (jewishCalendar.getInIsrael()) {
            return jewishCalendar.getJewishMonth() == 8 && jewishCalendar.getJewishDayOfMonth() == 7;
        }
        if (jewishCalendar.getDayOfWeek() == 7) {
            return false;
        }
        return jewishCalendar.getDayOfWeek() == 1 ? jewishCalendar.getTekufasTishreiElapsedDays() == 48 || jewishCalendar.getTekufasTishreiElapsedDays() == 47 : jewishCalendar.getTekufasTishreiElapsedDays() == 47;
    }

    public boolean isVeseinTalUmatarStartingTonight(JewishCalendar jewishCalendar) {
        if (jewishCalendar.getInIsrael()) {
            return jewishCalendar.getJewishMonth() == 8 && jewishCalendar.getJewishDayOfMonth() == 6;
        }
        if (jewishCalendar.getDayOfWeek() == 6) {
            return false;
        }
        return jewishCalendar.getDayOfWeek() == 7 ? jewishCalendar.getTekufasTishreiElapsedDays() == 47 || jewishCalendar.getTekufasTishreiElapsedDays() == 46 : jewishCalendar.getTekufasTishreiElapsedDays() == 46;
    }

    public boolean isVeseinTalUmatarRecited(JewishCalendar jewishCalendar) {
        if (jewishCalendar.getJewishMonth() == 1 && jewishCalendar.getJewishDayOfMonth() < 15) {
            return true;
        }
        if (jewishCalendar.getJewishMonth() < 8) {
            return false;
        }
        return jewishCalendar.getInIsrael() ? jewishCalendar.getJewishMonth() != 8 || jewishCalendar.getJewishDayOfMonth() >= 7 : jewishCalendar.getTekufasTishreiElapsedDays() >= 47;
    }

    public boolean isVeseinBerachaRecited(JewishCalendar jewishCalendar) {
        return !isVeseinTalUmatarRecited(jewishCalendar);
    }

    public boolean isMashivHaruachStartDate(JewishCalendar jewishCalendar) {
        return jewishCalendar.getJewishMonth() == 7 && jewishCalendar.getJewishDayOfMonth() == 22;
    }

    public boolean isMashivHaruachEndDate(JewishCalendar jewishCalendar) {
        return jewishCalendar.getJewishMonth() == 1 && jewishCalendar.getJewishDayOfMonth() == 15;
    }

    public boolean isMashivHaruachRecited(JewishCalendar jewishCalendar) {
        JewishDate startDate = new JewishDate(jewishCalendar.getJewishYear(), 7, 22);
        JewishDate endDate = new JewishDate(jewishCalendar.getJewishYear(), 1, 15);
        return jewishCalendar.compareTo(startDate) > 0 && jewishCalendar.compareTo(endDate) < 0;
    }

    public boolean isMoridHatalRecited(JewishCalendar jewishCalendar) {
        return !isMashivHaruachRecited(jewishCalendar) || isMashivHaruachStartDate(jewishCalendar) || isMashivHaruachEndDate(jewishCalendar);
    }

    public boolean isHallelRecited(JewishCalendar jewishCalendar) {
        int day = jewishCalendar.getJewishDayOfMonth();
        int month = jewishCalendar.getJewishMonth();
        int holidayIndex = jewishCalendar.getYomTovIndex();
        boolean inIsrael = jewishCalendar.getInIsrael();
        if (jewishCalendar.isRoshChodesh() || jewishCalendar.isChanukah()) {
            return true;
        }
        switch (month) {
            case 1:
                if (day >= 15) {
                    if ((!inIsrael || day > 21) && (inIsrael || day > 22)) {
                    }
                }
                break;
            case 2:
                if (jewishCalendar.isUseModernHolidays()) {
                    if (holidayIndex == 31 || holidayIndex == 32) {
                    }
                }
                break;
            case 3:
                if (day == 6 || (!inIsrael && day == 7)) {
                }
                break;
            case 7:
                if (day >= 15) {
                    if (day <= 22 || (!inIsrael && day <= 23)) {
                    }
                }
                break;
        }
        return true;
    }

    public boolean isHallelShalemRecited(JewishCalendar jewishCalendar) {
        int day = jewishCalendar.getJewishDayOfMonth();
        int month = jewishCalendar.getJewishMonth();
        boolean inIsrael = jewishCalendar.getInIsrael();
        if (isHallelRecited(jewishCalendar)) {
            return (!jewishCalendar.isRoshChodesh() || jewishCalendar.isChanukah()) && (month != 1 || ((!inIsrael || day <= 15) && (inIsrael || day <= 16)));
        }
        return false;
    }

    public boolean isAlHanissimRecited(JewishCalendar jewishCalendar) {
        return jewishCalendar.isPurim() || jewishCalendar.isChanukah();
    }

    public boolean isYaalehVeyavoRecited(JewishCalendar jewishCalendar) {
        return jewishCalendar.isPesach() || jewishCalendar.isShavuos() || jewishCalendar.isRoshHashana() || jewishCalendar.isYomKippur() || jewishCalendar.isSuccos() || jewishCalendar.isShminiAtzeres() || jewishCalendar.isSimchasTorah() || jewishCalendar.isRoshChodesh();
    }

    public boolean isTachanunRecitedWeekOfPurim() {
        return this.tachanunRecitedWeekOfPurim;
    }

    public void setTachanunRecitedWeekOfPurim(boolean tachanunRecitedWeekOfPurim) {
        this.tachanunRecitedWeekOfPurim = tachanunRecitedWeekOfPurim;
    }

    public boolean isTachanunRecitedWeekOfHod() {
        return this.tachanunRecitedWeekOfHod;
    }

    public void setTachanunRecitedWeekOfHod(boolean tachanunRecitedWeekOfHod) {
        this.tachanunRecitedWeekOfHod = tachanunRecitedWeekOfHod;
    }

    public boolean isTachanunRecitedEndOfTishrei() {
        return this.tachanunRecitedEndOfTishrei;
    }

    public void setTachanunRecitedEndOfTishrei(boolean tachanunRecitedEndOfTishrei) {
        this.tachanunRecitedEndOfTishrei = tachanunRecitedEndOfTishrei;
    }

    public boolean isTachanunRecitedWeekAfterShavuos() {
        return this.tachanunRecitedWeekAfterShavuos;
    }

    public void setTachanunRecitedWeekAfterShavuos(boolean tachanunRecitedWeekAfterShavuos) {
        this.tachanunRecitedWeekAfterShavuos = tachanunRecitedWeekAfterShavuos;
    }

    public boolean isTachanunRecited13SivanOutOfIsrael() {
        return this.tachanunRecited13SivanOutOfIsrael;
    }

    public void setTachanunRecited13SivanOutOfIsrael(boolean tachanunRecitedThirteenSivanOutOfIsrael) {
        this.tachanunRecited13SivanOutOfIsrael = tachanunRecitedThirteenSivanOutOfIsrael;
    }

    public boolean isTachanunRecitedPesachSheni() {
        return this.tachanunRecitedPesachSheni;
    }

    public void setTachanunRecitedPesachSheni(boolean tachanunRecitedPesachSheni) {
        this.tachanunRecitedPesachSheni = tachanunRecitedPesachSheni;
    }

    public boolean isTachanunRecited15IyarOutOfIsrael() {
        return this.tachanunRecited15IyarOutOfIsrael;
    }

    public void setTachanunRecited15IyarOutOfIsrael(boolean tachanunRecited15IyarOutOfIsrael) {
        this.tachanunRecited15IyarOutOfIsrael = tachanunRecited15IyarOutOfIsrael;
    }

    public boolean isTachanunRecitedMinchaErevLagBaomer() {
        return this.tachanunRecitedMinchaErevLagBaomer;
    }

    public void setTachanunRecitedMinchaErevLagBaomer(boolean tachanunRecitedMinchaErevLagBaomer) {
        this.tachanunRecitedMinchaErevLagBaomer = tachanunRecitedMinchaErevLagBaomer;
    }

    public boolean isTachanunRecitedShivasYemeiHamiluim() {
        return this.tachanunRecitedShivasYemeiHamiluim;
    }

    public void setTachanunRecitedShivasYemeiHamiluim(boolean tachanunRecitedShivasYemeiHamiluim) {
        this.tachanunRecitedShivasYemeiHamiluim = tachanunRecitedShivasYemeiHamiluim;
    }

    public boolean isTachanunRecitedFridays() {
        return this.tachanunRecitedFridays;
    }

    public void setTachanunRecitedFridays(boolean tachanunRecitedFridays) {
        this.tachanunRecitedFridays = tachanunRecitedFridays;
    }

    public boolean isTachanunRecitedSundays() {
        return this.tachanunRecitedSundays;
    }

    public void setTachanunRecitedSundays(boolean tachanunRecitedSundays) {
        this.tachanunRecitedSundays = tachanunRecitedSundays;
    }

    public boolean isTachanunRecitedMinchaAllYear() {
        return this.tachanunRecitedMinchaAllYear;
    }

    public void setTachanunRecitedMinchaAllYear(boolean tachanunRecitedMinchaAllYear) {
        this.tachanunRecitedMinchaAllYear = tachanunRecitedMinchaAllYear;
    }
}
