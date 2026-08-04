package com.kosherjava.zmanim.hebrewcalendar;

import com.kosherjava.zmanim.util.GeoLocation;
import java.time.LocalDate;
import java.util.Calendar;
import java.util.Date;
import java.util.TimeZone;

/* loaded from: classes.dex */
public class JewishCalendar extends JewishDate {
    public static final int BEHAB = 37;
    public static final int CHANUKAH = 21;
    public static final int CHOL_HAMOED_PESACH = 2;
    public static final int CHOL_HAMOED_SUCCOS = 16;
    public static final int EREV_PESACH = 0;
    public static final int EREV_ROSH_HASHANA = 9;
    public static final int EREV_SHAVUOS = 4;
    public static final int EREV_SUCCOS = 14;
    public static final int EREV_YOM_KIPPUR = 12;
    public static final int FAST_OF_ESTHER = 24;
    public static final int FAST_OF_GEDALYAH = 11;
    public static final int HOSHANA_RABBA = 17;
    public static final int ISRU_CHAG = 35;
    public static final int LAG_BAOMER = 33;
    public static final int PESACH = 1;
    public static final int PESACH_SHENI = 3;
    public static final int PURIM = 25;
    public static final int PURIM_KATAN = 27;
    public static final int ROSH_CHODESH = 28;
    public static final int ROSH_HASHANA = 10;
    public static final int SEVENTEEN_OF_TAMMUZ = 6;
    public static final int SHAVUOS = 5;
    public static final int SHEMINI_ATZERES = 18;
    public static final int SHUSHAN_PURIM = 26;
    public static final int SHUSHAN_PURIM_KATAN = 34;
    public static final int SIMCHAS_TORAH = 19;
    public static final int SUCCOS = 15;
    public static final int TENTH_OF_TEVES = 22;
    public static final int TISHA_BEAV = 7;
    public static final int TU_BEAV = 8;
    public static final int TU_BESHVAT = 23;
    public static final int YOM_HAATZMAUT = 31;
    public static final int YOM_HASHOAH = 29;
    public static final int YOM_HAZIKARON = 30;
    public static final int YOM_KIPPUR = 13;
    public static final int YOM_KIPPUR_KATAN = 36;
    public static final int YOM_YERUSHALAYIM = 32;
    public static final Parsha[][] parshalist = {new Parsha[]{Parsha.NONE, Parsha.VAYEILECH, Parsha.HAAZINU, Parsha.NONE, Parsha.BERESHIS, Parsha.NOACH, Parsha.LECH_LECHA, Parsha.VAYERA, Parsha.CHAYEI_SARA, Parsha.TOLDOS, Parsha.VAYETZEI, Parsha.VAYISHLACH, Parsha.VAYESHEV, Parsha.MIKETZ, Parsha.VAYIGASH, Parsha.VAYECHI, Parsha.SHEMOS, Parsha.VAERA, Parsha.BO, Parsha.BESHALACH, Parsha.YISRO, Parsha.MISHPATIM, Parsha.TERUMAH, Parsha.TETZAVEH, Parsha.KI_SISA, Parsha.VAYAKHEL_PEKUDEI, Parsha.VAYIKRA, Parsha.TZAV, Parsha.NONE, Parsha.SHMINI, Parsha.TAZRIA_METZORA, Parsha.ACHREI_MOS_KEDOSHIM, Parsha.EMOR, Parsha.BEHAR_BECHUKOSAI, Parsha.BAMIDBAR, Parsha.NASSO, Parsha.BEHAALOSCHA, Parsha.SHLACH, Parsha.KORACH, Parsha.CHUKAS, Parsha.BALAK, Parsha.PINCHAS, Parsha.MATOS_MASEI, Parsha.DEVARIM, Parsha.VAESCHANAN, Parsha.EIKEV, Parsha.REEH, Parsha.SHOFTIM, Parsha.KI_SEITZEI, Parsha.KI_SAVO, Parsha.NITZAVIM_VAYEILECH}, new Parsha[]{Parsha.NONE, Parsha.VAYEILECH, Parsha.HAAZINU, Parsha.NONE, Parsha.BERESHIS, Parsha.NOACH, Parsha.LECH_LECHA, Parsha.VAYERA, Parsha.CHAYEI_SARA, Parsha.TOLDOS, Parsha.VAYETZEI, Parsha.VAYISHLACH, Parsha.VAYESHEV, Parsha.MIKETZ, Parsha.VAYIGASH, Parsha.VAYECHI, Parsha.SHEMOS, Parsha.VAERA, Parsha.BO, Parsha.BESHALACH, Parsha.YISRO, Parsha.MISHPATIM, Parsha.TERUMAH, Parsha.TETZAVEH, Parsha.KI_SISA, Parsha.VAYAKHEL_PEKUDEI, Parsha.VAYIKRA, Parsha.TZAV, Parsha.NONE, Parsha.SHMINI, Parsha.TAZRIA_METZORA, Parsha.ACHREI_MOS_KEDOSHIM, Parsha.EMOR, Parsha.BEHAR_BECHUKOSAI, Parsha.BAMIDBAR, Parsha.NONE, Parsha.NASSO, Parsha.BEHAALOSCHA, Parsha.SHLACH, Parsha.KORACH, Parsha.CHUKAS_BALAK, Parsha.PINCHAS, Parsha.MATOS_MASEI, Parsha.DEVARIM, Parsha.VAESCHANAN, Parsha.EIKEV, Parsha.REEH, Parsha.SHOFTIM, Parsha.KI_SEITZEI, Parsha.KI_SAVO, Parsha.NITZAVIM_VAYEILECH}, new Parsha[]{Parsha.NONE, Parsha.HAAZINU, Parsha.NONE, Parsha.NONE, Parsha.BERESHIS, Parsha.NOACH, Parsha.LECH_LECHA, Parsha.VAYERA, Parsha.CHAYEI_SARA, Parsha.TOLDOS, Parsha.VAYETZEI, Parsha.VAYISHLACH, Parsha.VAYESHEV, Parsha.MIKETZ, Parsha.VAYIGASH, Parsha.VAYECHI, Parsha.SHEMOS, Parsha.VAERA, Parsha.BO, Parsha.BESHALACH, Parsha.YISRO, Parsha.MISHPATIM, Parsha.TERUMAH, Parsha.TETZAVEH, Parsha.KI_SISA, Parsha.VAYAKHEL_PEKUDEI, Parsha.VAYIKRA, Parsha.TZAV, Parsha.NONE, Parsha.NONE, Parsha.SHMINI, Parsha.TAZRIA_METZORA, Parsha.ACHREI_MOS_KEDOSHIM, Parsha.EMOR, Parsha.BEHAR_BECHUKOSAI, Parsha.BAMIDBAR, Parsha.NASSO, Parsha.BEHAALOSCHA, Parsha.SHLACH, Parsha.KORACH, Parsha.CHUKAS, Parsha.BALAK, Parsha.PINCHAS, Parsha.MATOS_MASEI, Parsha.DEVARIM, Parsha.VAESCHANAN, Parsha.EIKEV, Parsha.REEH, Parsha.SHOFTIM, Parsha.KI_SEITZEI, Parsha.KI_SAVO, Parsha.NITZAVIM}, new Parsha[]{Parsha.NONE, Parsha.HAAZINU, Parsha.NONE, Parsha.NONE, Parsha.BERESHIS, Parsha.NOACH, Parsha.LECH_LECHA, Parsha.VAYERA, Parsha.CHAYEI_SARA, Parsha.TOLDOS, Parsha.VAYETZEI, Parsha.VAYISHLACH, Parsha.VAYESHEV, Parsha.MIKETZ, Parsha.VAYIGASH, Parsha.VAYECHI, Parsha.SHEMOS, Parsha.VAERA, Parsha.BO, Parsha.BESHALACH, Parsha.YISRO, Parsha.MISHPATIM, Parsha.TERUMAH, Parsha.TETZAVEH, Parsha.KI_SISA, Parsha.VAYAKHEL, Parsha.PEKUDEI, Parsha.VAYIKRA, Parsha.TZAV, Parsha.NONE, Parsha.SHMINI, Parsha.TAZRIA_METZORA, Parsha.ACHREI_MOS_KEDOSHIM, Parsha.EMOR, Parsha.BEHAR_BECHUKOSAI, Parsha.BAMIDBAR, Parsha.NASSO, Parsha.BEHAALOSCHA, Parsha.SHLACH, Parsha.KORACH, Parsha.CHUKAS, Parsha.BALAK, Parsha.PINCHAS, Parsha.MATOS_MASEI, Parsha.DEVARIM, Parsha.VAESCHANAN, Parsha.EIKEV, Parsha.REEH, Parsha.SHOFTIM, Parsha.KI_SEITZEI, Parsha.KI_SAVO, Parsha.NITZAVIM}, new Parsha[]{Parsha.NONE, Parsha.NONE, Parsha.HAAZINU, Parsha.NONE, Parsha.NONE, Parsha.BERESHIS, Parsha.NOACH, Parsha.LECH_LECHA, Parsha.VAYERA, Parsha.CHAYEI_SARA, Parsha.TOLDOS, Parsha.VAYETZEI, Parsha.VAYISHLACH, Parsha.VAYESHEV, Parsha.MIKETZ, Parsha.VAYIGASH, Parsha.VAYECHI, Parsha.SHEMOS, Parsha.VAERA, Parsha.BO, Parsha.BESHALACH, Parsha.YISRO, Parsha.MISHPATIM, Parsha.TERUMAH, Parsha.TETZAVEH, Parsha.KI_SISA, Parsha.VAYAKHEL_PEKUDEI, Parsha.VAYIKRA, Parsha.TZAV, Parsha.NONE, Parsha.SHMINI, Parsha.TAZRIA_METZORA, Parsha.ACHREI_MOS_KEDOSHIM, Parsha.EMOR, Parsha.BEHAR_BECHUKOSAI, Parsha.BAMIDBAR, Parsha.NASSO, Parsha.BEHAALOSCHA, Parsha.SHLACH, Parsha.KORACH, Parsha.CHUKAS, Parsha.BALAK, Parsha.PINCHAS, Parsha.MATOS_MASEI, Parsha.DEVARIM, Parsha.VAESCHANAN, Parsha.EIKEV, Parsha.REEH, Parsha.SHOFTIM, Parsha.KI_SEITZEI, Parsha.KI_SAVO, Parsha.NITZAVIM}, new Parsha[]{Parsha.NONE, Parsha.NONE, Parsha.HAAZINU, Parsha.NONE, Parsha.NONE, Parsha.BERESHIS, Parsha.NOACH, Parsha.LECH_LECHA, Parsha.VAYERA, Parsha.CHAYEI_SARA, Parsha.TOLDOS, Parsha.VAYETZEI, Parsha.VAYISHLACH, Parsha.VAYESHEV, Parsha.MIKETZ, Parsha.VAYIGASH, Parsha.VAYECHI, Parsha.SHEMOS, Parsha.VAERA, Parsha.BO, Parsha.BESHALACH, Parsha.YISRO, Parsha.MISHPATIM, Parsha.TERUMAH, Parsha.TETZAVEH, Parsha.KI_SISA, Parsha.VAYAKHEL_PEKUDEI, Parsha.VAYIKRA, Parsha.TZAV, Parsha.NONE, Parsha.SHMINI, Parsha.TAZRIA_METZORA, Parsha.ACHREI_MOS_KEDOSHIM, Parsha.EMOR, Parsha.BEHAR_BECHUKOSAI, Parsha.BAMIDBAR, Parsha.NASSO, Parsha.BEHAALOSCHA, Parsha.SHLACH, Parsha.KORACH, Parsha.CHUKAS, Parsha.BALAK, Parsha.PINCHAS, Parsha.MATOS_MASEI, Parsha.DEVARIM, Parsha.VAESCHANAN, Parsha.EIKEV, Parsha.REEH, Parsha.SHOFTIM, Parsha.KI_SEITZEI, Parsha.KI_SAVO, Parsha.NITZAVIM_VAYEILECH}, new Parsha[]{Parsha.NONE, Parsha.VAYEILECH, Parsha.HAAZINU, Parsha.NONE, Parsha.BERESHIS, Parsha.NOACH, Parsha.LECH_LECHA, Parsha.VAYERA, Parsha.CHAYEI_SARA, Parsha.TOLDOS, Parsha.VAYETZEI, Parsha.VAYISHLACH, Parsha.VAYESHEV, Parsha.MIKETZ, Parsha.VAYIGASH, Parsha.VAYECHI, Parsha.SHEMOS, Parsha.VAERA, Parsha.BO, Parsha.BESHALACH, Parsha.YISRO, Parsha.MISHPATIM, Parsha.TERUMAH, Parsha.TETZAVEH, Parsha.KI_SISA, Parsha.VAYAKHEL, Parsha.PEKUDEI, Parsha.VAYIKRA, Parsha.TZAV, Parsha.SHMINI, Parsha.TAZRIA, Parsha.METZORA, Parsha.NONE, Parsha.ACHREI_MOS, Parsha.KEDOSHIM, Parsha.EMOR, Parsha.BEHAR, Parsha.BECHUKOSAI, Parsha.BAMIDBAR, Parsha.NONE, Parsha.NASSO, Parsha.BEHAALOSCHA, Parsha.SHLACH, Parsha.KORACH, Parsha.CHUKAS_BALAK, Parsha.PINCHAS, Parsha.MATOS_MASEI, Parsha.DEVARIM, Parsha.VAESCHANAN, Parsha.EIKEV, Parsha.REEH, Parsha.SHOFTIM, Parsha.KI_SEITZEI, Parsha.KI_SAVO, Parsha.NITZAVIM_VAYEILECH}, new Parsha[]{Parsha.NONE, Parsha.VAYEILECH, Parsha.HAAZINU, Parsha.NONE, Parsha.BERESHIS, Parsha.NOACH, Parsha.LECH_LECHA, Parsha.VAYERA, Parsha.CHAYEI_SARA, Parsha.TOLDOS, Parsha.VAYETZEI, Parsha.VAYISHLACH, Parsha.VAYESHEV, Parsha.MIKETZ, Parsha.VAYIGASH, Parsha.VAYECHI, Parsha.SHEMOS, Parsha.VAERA, Parsha.BO, Parsha.BESHALACH, Parsha.YISRO, Parsha.MISHPATIM, Parsha.TERUMAH, Parsha.TETZAVEH, Parsha.KI_SISA, Parsha.VAYAKHEL, Parsha.PEKUDEI, Parsha.VAYIKRA, Parsha.TZAV, Parsha.SHMINI, Parsha.TAZRIA, Parsha.METZORA, Parsha.NONE, Parsha.NONE, Parsha.ACHREI_MOS, Parsha.KEDOSHIM, Parsha.EMOR, Parsha.BEHAR, Parsha.BECHUKOSAI, Parsha.BAMIDBAR, Parsha.NASSO, Parsha.BEHAALOSCHA, Parsha.SHLACH, Parsha.KORACH, Parsha.CHUKAS, Parsha.BALAK, Parsha.PINCHAS, Parsha.MATOS_MASEI, Parsha.DEVARIM, Parsha.VAESCHANAN, Parsha.EIKEV, Parsha.REEH, Parsha.SHOFTIM, Parsha.KI_SEITZEI, Parsha.KI_SAVO, Parsha.NITZAVIM}, new Parsha[]{Parsha.NONE, Parsha.HAAZINU, Parsha.NONE, Parsha.NONE, Parsha.BERESHIS, Parsha.NOACH, Parsha.LECH_LECHA, Parsha.VAYERA, Parsha.CHAYEI_SARA, Parsha.TOLDOS, Parsha.VAYETZEI, Parsha.VAYISHLACH, Parsha.VAYESHEV, Parsha.MIKETZ, Parsha.VAYIGASH, Parsha.VAYECHI, Parsha.SHEMOS, Parsha.VAERA, Parsha.BO, Parsha.BESHALACH, Parsha.YISRO, Parsha.MISHPATIM, Parsha.TERUMAH, Parsha.TETZAVEH, Parsha.KI_SISA, Parsha.VAYAKHEL, Parsha.PEKUDEI, Parsha.VAYIKRA, Parsha.TZAV, Parsha.SHMINI, Parsha.TAZRIA, Parsha.METZORA, Parsha.ACHREI_MOS, Parsha.NONE, Parsha.KEDOSHIM, Parsha.EMOR, Parsha.BEHAR, Parsha.BECHUKOSAI, Parsha.BAMIDBAR, Parsha.NASSO, Parsha.BEHAALOSCHA, Parsha.SHLACH, Parsha.KORACH, Parsha.CHUKAS, Parsha.BALAK, Parsha.PINCHAS, Parsha.MATOS, Parsha.MASEI, Parsha.DEVARIM, Parsha.VAESCHANAN, Parsha.EIKEV, Parsha.REEH, Parsha.SHOFTIM, Parsha.KI_SEITZEI, Parsha.KI_SAVO, Parsha.NITZAVIM}, new Parsha[]{Parsha.NONE, Parsha.HAAZINU, Parsha.NONE, Parsha.NONE, Parsha.BERESHIS, Parsha.NOACH, Parsha.LECH_LECHA, Parsha.VAYERA, Parsha.CHAYEI_SARA, Parsha.TOLDOS, Parsha.VAYETZEI, Parsha.VAYISHLACH, Parsha.VAYESHEV, Parsha.MIKETZ, Parsha.VAYIGASH, Parsha.VAYECHI, Parsha.SHEMOS, Parsha.VAERA, Parsha.BO, Parsha.BESHALACH, Parsha.YISRO, Parsha.MISHPATIM, Parsha.TERUMAH, Parsha.TETZAVEH, Parsha.KI_SISA, Parsha.VAYAKHEL, Parsha.PEKUDEI, Parsha.VAYIKRA, Parsha.TZAV, Parsha.SHMINI, Parsha.TAZRIA, Parsha.METZORA, Parsha.ACHREI_MOS, Parsha.NONE, Parsha.KEDOSHIM, Parsha.EMOR, Parsha.BEHAR, Parsha.BECHUKOSAI, Parsha.BAMIDBAR, Parsha.NASSO, Parsha.BEHAALOSCHA, Parsha.SHLACH, Parsha.KORACH, Parsha.CHUKAS, Parsha.BALAK, Parsha.PINCHAS, Parsha.MATOS, Parsha.MASEI, Parsha.DEVARIM, Parsha.VAESCHANAN, Parsha.EIKEV, Parsha.REEH, Parsha.SHOFTIM, Parsha.KI_SEITZEI, Parsha.KI_SAVO, Parsha.NITZAVIM_VAYEILECH}, new Parsha[]{Parsha.NONE, Parsha.NONE, Parsha.HAAZINU, Parsha.NONE, Parsha.NONE, Parsha.BERESHIS, Parsha.NOACH, Parsha.LECH_LECHA, Parsha.VAYERA, Parsha.CHAYEI_SARA, Parsha.TOLDOS, Parsha.VAYETZEI, Parsha.VAYISHLACH, Parsha.VAYESHEV, Parsha.MIKETZ, Parsha.VAYIGASH, Parsha.VAYECHI, Parsha.SHEMOS, Parsha.VAERA, Parsha.BO, Parsha.BESHALACH, Parsha.YISRO, Parsha.MISHPATIM, Parsha.TERUMAH, Parsha.TETZAVEH, Parsha.KI_SISA, Parsha.VAYAKHEL, Parsha.PEKUDEI, Parsha.VAYIKRA, Parsha.TZAV, Parsha.SHMINI, Parsha.TAZRIA, Parsha.METZORA, Parsha.NONE, Parsha.ACHREI_MOS, Parsha.KEDOSHIM, Parsha.EMOR, Parsha.BEHAR, Parsha.BECHUKOSAI, Parsha.BAMIDBAR, Parsha.NASSO, Parsha.BEHAALOSCHA, Parsha.SHLACH, Parsha.KORACH, Parsha.CHUKAS, Parsha.BALAK, Parsha.PINCHAS, Parsha.MATOS_MASEI, Parsha.DEVARIM, Parsha.VAESCHANAN, Parsha.EIKEV, Parsha.REEH, Parsha.SHOFTIM, Parsha.KI_SEITZEI, Parsha.KI_SAVO, Parsha.NITZAVIM_VAYEILECH}, new Parsha[]{Parsha.NONE, Parsha.NONE, Parsha.HAAZINU, Parsha.NONE, Parsha.NONE, Parsha.BERESHIS, Parsha.NOACH, Parsha.LECH_LECHA, Parsha.VAYERA, Parsha.CHAYEI_SARA, Parsha.TOLDOS, Parsha.VAYETZEI, Parsha.VAYISHLACH, Parsha.VAYESHEV, Parsha.MIKETZ, Parsha.VAYIGASH, Parsha.VAYECHI, Parsha.SHEMOS, Parsha.VAERA, Parsha.BO, Parsha.BESHALACH, Parsha.YISRO, Parsha.MISHPATIM, Parsha.TERUMAH, Parsha.TETZAVEH, Parsha.KI_SISA, Parsha.VAYAKHEL, Parsha.PEKUDEI, Parsha.VAYIKRA, Parsha.TZAV, Parsha.SHMINI, Parsha.TAZRIA, Parsha.METZORA, Parsha.NONE, Parsha.ACHREI_MOS, Parsha.KEDOSHIM, Parsha.EMOR, Parsha.BEHAR, Parsha.BECHUKOSAI, Parsha.BAMIDBAR, Parsha.NONE, Parsha.NASSO, Parsha.BEHAALOSCHA, Parsha.SHLACH, Parsha.KORACH, Parsha.CHUKAS_BALAK, Parsha.PINCHAS, Parsha.MATOS_MASEI, Parsha.DEVARIM, Parsha.VAESCHANAN, Parsha.EIKEV, Parsha.REEH, Parsha.SHOFTIM, Parsha.KI_SEITZEI, Parsha.KI_SAVO, Parsha.NITZAVIM_VAYEILECH}, new Parsha[]{Parsha.NONE, Parsha.VAYEILECH, Parsha.HAAZINU, Parsha.NONE, Parsha.BERESHIS, Parsha.NOACH, Parsha.LECH_LECHA, Parsha.VAYERA, Parsha.CHAYEI_SARA, Parsha.TOLDOS, Parsha.VAYETZEI, Parsha.VAYISHLACH, Parsha.VAYESHEV, Parsha.MIKETZ, Parsha.VAYIGASH, Parsha.VAYECHI, Parsha.SHEMOS, Parsha.VAERA, Parsha.BO, Parsha.BESHALACH, Parsha.YISRO, Parsha.MISHPATIM, Parsha.TERUMAH, Parsha.TETZAVEH, Parsha.KI_SISA, Parsha.VAYAKHEL_PEKUDEI, Parsha.VAYIKRA, Parsha.TZAV, Parsha.NONE, Parsha.SHMINI, Parsha.TAZRIA_METZORA, Parsha.ACHREI_MOS_KEDOSHIM, Parsha.EMOR, Parsha.BEHAR_BECHUKOSAI, Parsha.BAMIDBAR, Parsha.NASSO, Parsha.BEHAALOSCHA, Parsha.SHLACH, Parsha.KORACH, Parsha.CHUKAS, Parsha.BALAK, Parsha.PINCHAS, Parsha.MATOS_MASEI, Parsha.DEVARIM, Parsha.VAESCHANAN, Parsha.EIKEV, Parsha.REEH, Parsha.SHOFTIM, Parsha.KI_SEITZEI, Parsha.KI_SAVO, Parsha.NITZAVIM_VAYEILECH}, new Parsha[]{Parsha.NONE, Parsha.HAAZINU, Parsha.NONE, Parsha.NONE, Parsha.BERESHIS, Parsha.NOACH, Parsha.LECH_LECHA, Parsha.VAYERA, Parsha.CHAYEI_SARA, Parsha.TOLDOS, Parsha.VAYETZEI, Parsha.VAYISHLACH, Parsha.VAYESHEV, Parsha.MIKETZ, Parsha.VAYIGASH, Parsha.VAYECHI, Parsha.SHEMOS, Parsha.VAERA, Parsha.BO, Parsha.BESHALACH, Parsha.YISRO, Parsha.MISHPATIM, Parsha.TERUMAH, Parsha.TETZAVEH, Parsha.KI_SISA, Parsha.VAYAKHEL_PEKUDEI, Parsha.VAYIKRA, Parsha.TZAV, Parsha.NONE, Parsha.SHMINI, Parsha.TAZRIA_METZORA, Parsha.ACHREI_MOS_KEDOSHIM, Parsha.EMOR, Parsha.BEHAR, Parsha.BECHUKOSAI, Parsha.BAMIDBAR, Parsha.NASSO, Parsha.BEHAALOSCHA, Parsha.SHLACH, Parsha.KORACH, Parsha.CHUKAS, Parsha.BALAK, Parsha.PINCHAS, Parsha.MATOS_MASEI, Parsha.DEVARIM, Parsha.VAESCHANAN, Parsha.EIKEV, Parsha.REEH, Parsha.SHOFTIM, Parsha.KI_SEITZEI, Parsha.KI_SAVO, Parsha.NITZAVIM}, new Parsha[]{Parsha.NONE, Parsha.VAYEILECH, Parsha.HAAZINU, Parsha.NONE, Parsha.BERESHIS, Parsha.NOACH, Parsha.LECH_LECHA, Parsha.VAYERA, Parsha.CHAYEI_SARA, Parsha.TOLDOS, Parsha.VAYETZEI, Parsha.VAYISHLACH, Parsha.VAYESHEV, Parsha.MIKETZ, Parsha.VAYIGASH, Parsha.VAYECHI, Parsha.SHEMOS, Parsha.VAERA, Parsha.BO, Parsha.BESHALACH, Parsha.YISRO, Parsha.MISHPATIM, Parsha.TERUMAH, Parsha.TETZAVEH, Parsha.KI_SISA, Parsha.VAYAKHEL, Parsha.PEKUDEI, Parsha.VAYIKRA, Parsha.TZAV, Parsha.SHMINI, Parsha.TAZRIA, Parsha.METZORA, Parsha.NONE, Parsha.ACHREI_MOS, Parsha.KEDOSHIM, Parsha.EMOR, Parsha.BEHAR, Parsha.BECHUKOSAI, Parsha.BAMIDBAR, Parsha.NASSO, Parsha.BEHAALOSCHA, Parsha.SHLACH, Parsha.KORACH, Parsha.CHUKAS, Parsha.BALAK, Parsha.PINCHAS, Parsha.MATOS_MASEI, Parsha.DEVARIM, Parsha.VAESCHANAN, Parsha.EIKEV, Parsha.REEH, Parsha.SHOFTIM, Parsha.KI_SEITZEI, Parsha.KI_SAVO, Parsha.NITZAVIM_VAYEILECH}, new Parsha[]{Parsha.NONE, Parsha.VAYEILECH, Parsha.HAAZINU, Parsha.NONE, Parsha.BERESHIS, Parsha.NOACH, Parsha.LECH_LECHA, Parsha.VAYERA, Parsha.CHAYEI_SARA, Parsha.TOLDOS, Parsha.VAYETZEI, Parsha.VAYISHLACH, Parsha.VAYESHEV, Parsha.MIKETZ, Parsha.VAYIGASH, Parsha.VAYECHI, Parsha.SHEMOS, Parsha.VAERA, Parsha.BO, Parsha.BESHALACH, Parsha.YISRO, Parsha.MISHPATIM, Parsha.TERUMAH, Parsha.TETZAVEH, Parsha.KI_SISA, Parsha.VAYAKHEL, Parsha.PEKUDEI, Parsha.VAYIKRA, Parsha.TZAV, Parsha.SHMINI, Parsha.TAZRIA, Parsha.METZORA, Parsha.NONE, Parsha.ACHREI_MOS, Parsha.KEDOSHIM, Parsha.EMOR, Parsha.BEHAR, Parsha.BECHUKOSAI, Parsha.BAMIDBAR, Parsha.NASSO, Parsha.BEHAALOSCHA, Parsha.SHLACH, Parsha.KORACH, Parsha.CHUKAS, Parsha.BALAK, Parsha.PINCHAS, Parsha.MATOS, Parsha.MASEI, Parsha.DEVARIM, Parsha.VAESCHANAN, Parsha.EIKEV, Parsha.REEH, Parsha.SHOFTIM, Parsha.KI_SEITZEI, Parsha.KI_SAVO, Parsha.NITZAVIM}, new Parsha[]{Parsha.NONE, Parsha.NONE, Parsha.HAAZINU, Parsha.NONE, Parsha.NONE, Parsha.BERESHIS, Parsha.NOACH, Parsha.LECH_LECHA, Parsha.VAYERA, Parsha.CHAYEI_SARA, Parsha.TOLDOS, Parsha.VAYETZEI, Parsha.VAYISHLACH, Parsha.VAYESHEV, Parsha.MIKETZ, Parsha.VAYIGASH, Parsha.VAYECHI, Parsha.SHEMOS, Parsha.VAERA, Parsha.BO, Parsha.BESHALACH, Parsha.YISRO, Parsha.MISHPATIM, Parsha.TERUMAH, Parsha.TETZAVEH, Parsha.KI_SISA, Parsha.VAYAKHEL, Parsha.PEKUDEI, Parsha.VAYIKRA, Parsha.TZAV, Parsha.SHMINI, Parsha.TAZRIA, Parsha.METZORA, Parsha.NONE, Parsha.ACHREI_MOS, Parsha.KEDOSHIM, Parsha.EMOR, Parsha.BEHAR, Parsha.BECHUKOSAI, Parsha.BAMIDBAR, Parsha.NASSO, Parsha.BEHAALOSCHA, Parsha.SHLACH, Parsha.KORACH, Parsha.CHUKAS, Parsha.BALAK, Parsha.PINCHAS, Parsha.MATOS_MASEI, Parsha.DEVARIM, Parsha.VAESCHANAN, Parsha.EIKEV, Parsha.REEH, Parsha.SHOFTIM, Parsha.KI_SEITZEI, Parsha.KI_SAVO, Parsha.NITZAVIM_VAYEILECH}};
    private boolean inIsrael;
    private boolean isMukafChoma;
    private boolean useModernHolidays;

    public enum Parsha {
        NONE,
        BERESHIS,
        NOACH,
        LECH_LECHA,
        VAYERA,
        CHAYEI_SARA,
        TOLDOS,
        VAYETZEI,
        VAYISHLACH,
        VAYESHEV,
        MIKETZ,
        VAYIGASH,
        VAYECHI,
        SHEMOS,
        VAERA,
        BO,
        BESHALACH,
        YISRO,
        MISHPATIM,
        TERUMAH,
        TETZAVEH,
        KI_SISA,
        VAYAKHEL,
        PEKUDEI,
        VAYIKRA,
        TZAV,
        SHMINI,
        TAZRIA,
        METZORA,
        ACHREI_MOS,
        KEDOSHIM,
        EMOR,
        BEHAR,
        BECHUKOSAI,
        BAMIDBAR,
        NASSO,
        BEHAALOSCHA,
        SHLACH,
        KORACH,
        CHUKAS,
        BALAK,
        PINCHAS,
        MATOS,
        MASEI,
        DEVARIM,
        VAESCHANAN,
        EIKEV,
        REEH,
        SHOFTIM,
        KI_SEITZEI,
        KI_SAVO,
        NITZAVIM,
        VAYEILECH,
        HAAZINU,
        VZOS_HABERACHA,
        VAYAKHEL_PEKUDEI,
        TAZRIA_METZORA,
        ACHREI_MOS_KEDOSHIM,
        BEHAR_BECHUKOSAI,
        CHUKAS_BALAK,
        MATOS_MASEI,
        NITZAVIM_VAYEILECH,
        SHKALIM,
        ZACHOR,
        PARA,
        HACHODESH,
        SHUVA,
        SHIRA,
        HAGADOL,
        CHAZON,
        NACHAMU
    }

    public boolean isUseModernHolidays() {
        return this.useModernHolidays;
    }

    public void setUseModernHolidays(boolean useModernHolidays) {
        this.useModernHolidays = useModernHolidays;
    }

    public JewishCalendar() {
        this.inIsrael = false;
        this.isMukafChoma = false;
        this.useModernHolidays = false;
    }

    public JewishCalendar(Date date) {
        super(date);
        this.inIsrael = false;
        this.isMukafChoma = false;
        this.useModernHolidays = false;
    }

    public JewishCalendar(Calendar calendar) {
        super(calendar);
        this.inIsrael = false;
        this.isMukafChoma = false;
        this.useModernHolidays = false;
    }

    public JewishCalendar(LocalDate localDate) {
        super(localDate);
        this.inIsrael = false;
        this.isMukafChoma = false;
        this.useModernHolidays = false;
    }

    public JewishCalendar(int jewishYear, int jewishMonth, int jewishDayOfMonth) {
        super(jewishYear, jewishMonth, jewishDayOfMonth);
        this.inIsrael = false;
        this.isMukafChoma = false;
        this.useModernHolidays = false;
    }

    public JewishCalendar(int jewishYear, int jewishMonth, int jewishDayOfMonth, boolean inIsrael) {
        super(jewishYear, jewishMonth, jewishDayOfMonth);
        this.inIsrael = false;
        this.isMukafChoma = false;
        this.useModernHolidays = false;
        setInIsrael(inIsrael);
    }

    public void setInIsrael(boolean inIsrael) {
        this.inIsrael = inIsrael;
    }

    public boolean getInIsrael() {
        return this.inIsrael;
    }

    public boolean getIsMukafChoma() {
        return this.isMukafChoma;
    }

    public void setIsMukafChoma(boolean isMukafChoma) {
        this.isMukafChoma = isMukafChoma;
    }

    public boolean isBirkasHachamah() {
        int elapsedDays = getJewishCalendarElapsedDays(getJewishYear());
        double daysSinceStartOfJewishYear = elapsedDays + getDaysSinceStartOfJewishYear();
        Double.isNaN(daysSinceStartOfJewishYear);
        if (daysSinceStartOfJewishYear % 10227.0d == 172.0d) {
            return true;
        }
        return false;
    }

    private int getParshaYearType() {
        int roshHashanaDayOfWeek = (getJewishCalendarElapsedDays(getJewishYear()) + 1) % 7;
        if (roshHashanaDayOfWeek == 0) {
            roshHashanaDayOfWeek = 7;
        }
        if (isJewishLeapYear()) {
            switch (roshHashanaDayOfWeek) {
                case 2:
                    if (isKislevShort()) {
                        if (getInIsrael()) {
                            return 14;
                        }
                        return 6;
                    }
                    if (isCheshvanLong()) {
                        return getInIsrael() ? 15 : 7;
                    }
                    return -1;
                case 3:
                    return getInIsrael() ? 15 : 7;
                case 4:
                case 6:
                default:
                    return -1;
                case 5:
                    if (isKislevShort()) {
                        return 8;
                    }
                    if (isCheshvanLong()) {
                        return 9;
                    }
                    return -1;
                case 7:
                    if (isKislevShort()) {
                        return 10;
                    }
                    if (isCheshvanLong()) {
                        if (getInIsrael()) {
                            return 16;
                        }
                        return 11;
                    }
                    return -1;
            }
        }
        switch (roshHashanaDayOfWeek) {
            case 2:
                if (isKislevShort()) {
                    return 0;
                }
                if (isCheshvanLong()) {
                    return getInIsrael() ? 12 : 1;
                }
                return -1;
            case 3:
                return getInIsrael() ? 12 : 1;
            case 4:
            case 6:
            default:
                return -1;
            case 5:
                if (isCheshvanLong()) {
                    return 3;
                }
                if (!isKislevShort()) {
                    if (getInIsrael()) {
                        return 13;
                    }
                    return 2;
                }
                return -1;
            case 7:
                if (isKislevShort()) {
                    return 4;
                }
                if (isCheshvanLong()) {
                    return 5;
                }
                return -1;
        }
    }

    public Parsha getParshah() {
        if (getDayOfWeek() != 7) {
            return Parsha.NONE;
        }
        int yearType = getParshaYearType();
        int roshHashanaDayOfWeek = getJewishCalendarElapsedDays(getJewishYear()) % 7;
        int day = getDaysSinceStartOfJewishYear() + roshHashanaDayOfWeek;
        if (yearType >= 0) {
            return parshalist[yearType][day / 7];
        }
        return Parsha.NONE;
    }

    public Parsha getUpcomingParshah() {
        JewishCalendar clone = (JewishCalendar) clone();
        int daysToShabbos = ((7 - getDayOfWeek()) + 7) % 7;
        if (getDayOfWeek() != 7) {
            clone.forward(5, daysToShabbos);
        } else {
            clone.forward(5, 7);
        }
        while (clone.getParshah() == Parsha.NONE) {
            clone.forward(5, 7);
        }
        return clone.getParshah();
    }

    public Parsha getSpecialShabbos() {
        if (getDayOfWeek() == 7) {
            if (((getJewishMonth() == 11 && !isJewishLeapYear()) || (getJewishMonth() == 12 && isJewishLeapYear())) && (getJewishDayOfMonth() == 25 || getJewishDayOfMonth() == 27 || getJewishDayOfMonth() == 29)) {
                return Parsha.SHKALIM;
            }
            if ((getJewishMonth() == 12 && !isJewishLeapYear()) || getJewishMonth() == 13) {
                if (getJewishDayOfMonth() == 1) {
                    return Parsha.SHKALIM;
                }
                if (getJewishDayOfMonth() == 8 || getJewishDayOfMonth() == 9 || getJewishDayOfMonth() == 11 || getJewishDayOfMonth() == 13) {
                    return Parsha.ZACHOR;
                }
                if (getJewishDayOfMonth() == 18 || getJewishDayOfMonth() == 20 || getJewishDayOfMonth() == 22 || getJewishDayOfMonth() == 23) {
                    return Parsha.PARA;
                }
                if (getJewishDayOfMonth() == 25 || getJewishDayOfMonth() == 27 || getJewishDayOfMonth() == 29) {
                    return Parsha.HACHODESH;
                }
            }
            if (getJewishMonth() == 1) {
                if (getJewishDayOfMonth() == 1) {
                    return Parsha.HACHODESH;
                }
                if (getJewishDayOfMonth() >= 8 && getJewishDayOfMonth() <= 14) {
                    return Parsha.HAGADOL;
                }
            }
            if (getJewishMonth() == 5) {
                if (getJewishDayOfMonth() >= 4 && getJewishDayOfMonth() <= 9) {
                    return Parsha.CHAZON;
                }
                if (getJewishDayOfMonth() >= 10 && getJewishDayOfMonth() <= 16) {
                    return Parsha.NACHAMU;
                }
            }
            if (getJewishMonth() == 7 && getJewishDayOfMonth() >= 3 && getJewishDayOfMonth() <= 8) {
                return Parsha.SHUVA;
            }
            if (getParshah() == Parsha.BESHALACH) {
                return Parsha.SHIRA;
            }
        }
        return Parsha.NONE;
    }

    public int getYomTovIndex() {
        int i;
        int day = getJewishDayOfMonth();
        int dayOfWeek = getDayOfWeek();
        switch (getJewishMonth()) {
            case 1:
                if (day == 14) {
                    return 0;
                }
                if (day == 15 || day == 21 || (!this.inIsrael && (day == 16 || day == 22))) {
                    return 1;
                }
                if ((day >= 17 && day <= 20) || (day == 16 && this.inIsrael)) {
                    return 2;
                }
                if (day != 22 || !this.inIsrael) {
                    if (day == 23 && !this.inIsrael) {
                        return 35;
                    }
                    if (!isUseModernHolidays()) {
                        return -1;
                    }
                    if (day == 26 && dayOfWeek == 5) {
                        return 29;
                    }
                    if (day == 28 && dayOfWeek == 2) {
                        return 29;
                    }
                    if (day == 27 && dayOfWeek != 1 && dayOfWeek != 6) {
                        return 29;
                    }
                    return -1;
                }
                return 35;
            case 2:
                if (isUseModernHolidays()) {
                    if (day == 4 && dayOfWeek == 3) {
                        return 30;
                    }
                    if ((day == 3 || day == 2) && dayOfWeek == 4) {
                        return 30;
                    }
                    if (day == 5 && dayOfWeek == 2) {
                        return 30;
                    }
                }
                if (isUseModernHolidays()) {
                    if (day == 5) {
                        i = 4;
                        if (dayOfWeek == 4) {
                            return 31;
                        }
                    } else {
                        i = 4;
                    }
                    if ((day == i || day == 3) && dayOfWeek == 5) {
                        return 31;
                    }
                    if (day == 6 && dayOfWeek == 3) {
                        return 31;
                    }
                }
                if (day == 14) {
                    return 3;
                }
                if (day == 18) {
                    return 33;
                }
                if (isUseModernHolidays() && day == 28) {
                    return 32;
                }
                return -1;
            case 3:
                if (day == 5) {
                    return 4;
                }
                if (day == 6 || (day == 7 && !this.inIsrael)) {
                    return 5;
                }
                if (day != 7 || !this.inIsrael) {
                    if (day == 8 && !this.inIsrael) {
                        return 35;
                    }
                    return -1;
                }
                return 35;
            case 4:
                return ((day != 17 || dayOfWeek == 7) && !(day == 18 && dayOfWeek == 1)) ? -1 : 6;
            case 5:
                if ((dayOfWeek == 1 && day == 10) || (dayOfWeek != 7 && day == 9)) {
                    return 7;
                }
                if (day == 15) {
                    return 8;
                }
                return -1;
            case 6:
                if (day == 29) {
                    return 9;
                }
                return -1;
            case 7:
                if (day == 1 || day == 2) {
                    return 10;
                }
                if ((day == 3 && dayOfWeek != 7) || (day == 4 && dayOfWeek == 1)) {
                    return 11;
                }
                if (day == 9) {
                    return 12;
                }
                if (day == 10) {
                    return 13;
                }
                if (day == 14) {
                    return 14;
                }
                if (day == 15 || (day == 16 && !this.inIsrael)) {
                    return 15;
                }
                if (day >= 17 && day <= 20) {
                    return 16;
                }
                if (day == 16 && this.inIsrael) {
                    return 16;
                }
                if (day == 21) {
                    return 17;
                }
                if (day == 22) {
                    return 18;
                }
                if (day == 23 && !this.inIsrael) {
                    return 19;
                }
                if (day != 23 || !this.inIsrael) {
                    if (day == 24 && !this.inIsrael) {
                        return 35;
                    }
                    return -1;
                }
                return 35;
            case 8:
            default:
                return -1;
            case 9:
                return day >= 25 ? 21 : -1;
            case 10:
                if (day == 1 || day == 2 || (day == 3 && isKislevShort())) {
                    return 21;
                }
                return day == 10 ? 22 : -1;
            case 11:
                return day == 15 ? 23 : -1;
            case 12:
                if (!isJewishLeapYear()) {
                    if (((day == 11 || day == 12) && dayOfWeek == 5) || !(day != 13 || dayOfWeek == 6 || dayOfWeek == 7)) {
                        return 24;
                    }
                    if (day == 14) {
                        return 25;
                    }
                    if (day == 15) {
                        return 26;
                    }
                    return -1;
                }
                if (day == 14) {
                    return 27;
                }
                if (day == 15) {
                    return 34;
                }
                return -1;
            case 13:
                if (((day == 11 || day == 12) && dayOfWeek == 5) || !(day != 13 || dayOfWeek == 6 || dayOfWeek == 7)) {
                    return 24;
                }
                if (day == 14) {
                    return 25;
                }
                if (day == 15) {
                    return 26;
                }
                return -1;
        }
    }

    public boolean isYomTov() {
        int holidayIndex = getYomTovIndex();
        return (!isErevYomTov() || (holidayIndex == 17 && (holidayIndex != 2 || getJewishDayOfMonth() == 20))) && !((isTaanis() && holidayIndex != 13) || holidayIndex == 35 || getYomTovIndex() == -1);
    }

    public boolean isYomTovAssurBemelacha() {
        int holidayIndex = getYomTovIndex();
        return holidayIndex == 1 || holidayIndex == 5 || holidayIndex == 15 || holidayIndex == 18 || holidayIndex == 19 || holidayIndex == 10 || holidayIndex == 13;
    }

    public boolean isAssurBemelacha() {
        return getDayOfWeek() == 7 || isYomTovAssurBemelacha();
    }

    public boolean hasCandleLighting() {
        return isTomorrowShabbosOrYomTov();
    }

    public boolean isTomorrowShabbosOrYomTov() {
        return getDayOfWeek() == 6 || isErevYomTov() || isErevYomTovSheni();
    }

    public boolean isErevYomTovSheni() {
        if (getJewishMonth() == 7 && getJewishDayOfMonth() == 1) {
            return true;
        }
        if (!getInIsrael()) {
            if (getJewishMonth() == 1 && (getJewishDayOfMonth() == 15 || getJewishDayOfMonth() == 21)) {
                return true;
            }
            if (getJewishMonth() == 7 && (getJewishDayOfMonth() == 15 || getJewishDayOfMonth() == 22)) {
                return true;
            }
            if (getJewishMonth() == 3 && getJewishDayOfMonth() == 6) {
                return true;
            }
        }
        return false;
    }

    public boolean isAseresYemeiTeshuva() {
        return getJewishMonth() == 7 && getJewishDayOfMonth() <= 10;
    }

    public boolean isPesach() {
        int holidayIndex = getYomTovIndex();
        return holidayIndex == 1 || holidayIndex == 2;
    }

    public boolean isCholHamoedPesach() {
        int holidayIndex = getYomTovIndex();
        return holidayIndex == 2;
    }

    public boolean isShavuos() {
        int holidayIndex = getYomTovIndex();
        return holidayIndex == 5;
    }

    public boolean isRoshHashana() {
        int holidayIndex = getYomTovIndex();
        return holidayIndex == 10;
    }

    public boolean isYomKippur() {
        int holidayIndex = getYomTovIndex();
        return holidayIndex == 13;
    }

    public boolean isSuccos() {
        int holidayIndex = getYomTovIndex();
        return holidayIndex == 15 || holidayIndex == 16 || holidayIndex == 17;
    }

    public boolean isHoshanaRabba() {
        int holidayIndex = getYomTovIndex();
        return holidayIndex == 17;
    }

    public boolean isShminiAtzeres() {
        int holidayIndex = getYomTovIndex();
        return holidayIndex == 18;
    }

    public boolean isSimchasTorah() {
        int holidayIndex = getYomTovIndex();
        return holidayIndex == 19;
    }

    public boolean isCholHamoedSuccos() {
        int holidayIndex = getYomTovIndex();
        return holidayIndex == 16 || holidayIndex == 17;
    }

    public boolean isCholHamoed() {
        return isCholHamoedPesach() || isCholHamoedSuccos();
    }

    public boolean isErevYomTov() {
        int holidayIndex = getYomTovIndex();
        return holidayIndex == 0 || holidayIndex == 4 || holidayIndex == 9 || holidayIndex == 12 || holidayIndex == 14 || holidayIndex == 17 || (holidayIndex == 2 && getJewishDayOfMonth() == 20);
    }

    public boolean isErevRoshChodesh() {
        return getJewishDayOfMonth() == 29 && getJewishMonth() != 6;
    }

    public boolean isYomKippurKatan() {
        int dayOfWeek = getDayOfWeek();
        int month = getJewishMonth();
        int day = getJewishDayOfMonth();
        if (month == 6 || month == 7 || month == 9 || month == 1) {
            return false;
        }
        if (day != 29 || dayOfWeek == 6 || dayOfWeek == 7) {
            return (day == 27 || day == 28) && dayOfWeek == 5;
        }
        return true;
    }

    public boolean isBeHaB() {
        int dayOfWeek = getDayOfWeek();
        int month = getJewishMonth();
        int day = getJewishDayOfMonth();
        if (month == 8 || month == 2) {
            if (dayOfWeek == 2 && day > 4 && day < 18) {
                return true;
            }
            if (dayOfWeek == 5 && day > 7 && day < 14) {
                return true;
            }
            return false;
        }
        return false;
    }

    public boolean isTaanis() {
        int holidayIndex = getYomTovIndex();
        return holidayIndex == 6 || holidayIndex == 7 || holidayIndex == 13 || holidayIndex == 11 || holidayIndex == 22 || holidayIndex == 24;
    }

    public boolean isTaanisBechoros() {
        int day = getJewishDayOfMonth();
        int dayOfWeek = getDayOfWeek();
        if (getJewishMonth() == 1) {
            if (day == 14 && dayOfWeek != 7) {
                return true;
            }
            if (day == 12 && dayOfWeek == 5) {
                return true;
            }
        }
        return false;
    }

    public int getDayOfChanukah() {
        int day = getJewishDayOfMonth();
        if (isChanukah()) {
            if (getJewishMonth() == 9) {
                return day - 24;
            }
            return isKislevShort() ? day + 5 : day + 6;
        }
        return -1;
    }

    public boolean isChanukah() {
        return getYomTovIndex() == 21;
    }

    public boolean isPurim() {
        return this.isMukafChoma ? getYomTovIndex() == 26 : getYomTovIndex() == 25;
    }

    public boolean isRoshChodesh() {
        return (getJewishDayOfMonth() == 1 && getJewishMonth() != 7) || getJewishDayOfMonth() == 30;
    }

    public boolean isMacharChodesh() {
        return getDayOfWeek() == 7 && (getJewishDayOfMonth() == 30 || getJewishDayOfMonth() == 29);
    }

    public boolean isShabbosMevorchim() {
        return getDayOfWeek() == 7 && getJewishDayOfMonth() >= 23 && getJewishDayOfMonth() <= 29 && getJewishMonth() != 6;
    }

    public int getDayOfOmer() {
        int month = getJewishMonth();
        int day = getJewishDayOfMonth();
        if (month == 1 && day >= 16) {
            int omer = day - 15;
            return omer;
        }
        if (month == 2) {
            int omer2 = day + 15;
            return omer2;
        }
        if (month != 3 || day >= 6) {
            return -1;
        }
        int omer3 = day + 44;
        return omer3;
    }

    public boolean isTishaBav() {
        int holidayIndex = getYomTovIndex();
        return holidayIndex == 7;
    }

    public Date getMoladAsDate() {
        JewishDate molad = getMolad();
        TimeZone yerushalayimStandardTZ = TimeZone.getTimeZone("GMT+2");
        GeoLocation geo = new GeoLocation("Jerusalem, Israel", 31.778d, 35.2354d, yerushalayimStandardTZ);
        Calendar cal = Calendar.getInstance(geo.getTimeZone());
        cal.clear();
        double moladChalakim = molad.getMoladChalakim() * 10;
        Double.isNaN(moladChalakim);
        double moladSeconds = moladChalakim / 3.0d;
        cal.set(molad.getGregorianYear(), molad.getGregorianMonth(), molad.getGregorianDayOfMonth(), molad.getMoladHours(), molad.getMoladMinutes(), (int) moladSeconds);
        double d = (int) moladSeconds;
        Double.isNaN(d);
        cal.set(14, (int) ((moladSeconds - d) * 1000.0d));
        cal.add(14, ((int) geo.getLocalMeanTimeOffset()) * (-1));
        return cal.getTime();
    }

    public Date getTchilasZmanKidushLevana3Days() {
        Date molad = getMoladAsDate();
        Calendar cal = Calendar.getInstance();
        cal.setTime(molad);
        cal.add(10, 72);
        return cal.getTime();
    }

    public Date getTchilasZmanKidushLevana7Days() {
        Date molad = getMoladAsDate();
        Calendar cal = Calendar.getInstance();
        cal.setTime(molad);
        cal.add(10, 168);
        return cal.getTime();
    }

    public Date getSofZmanKidushLevanaBetweenMoldos() {
        Date molad = getMoladAsDate();
        Calendar cal = Calendar.getInstance();
        cal.setTime(molad);
        cal.add(10, 354);
        cal.add(12, 22);
        cal.add(13, 1);
        cal.add(14, 666);
        return cal.getTime();
    }

    public Date getSofZmanKidushLevana15Days() {
        Date molad = getMoladAsDate();
        Calendar cal = Calendar.getInstance();
        cal.setTime(molad);
        cal.add(10, 360);
        return cal.getTime();
    }

    public Daf getDafYomiBavli() {
        return kosherjava.zmanim.hebrewcalendar.YomiCalculator.getDafYomiBavli(this);
    }

    public Daf getDafYomiYerushalmi() {
        return kosherjava.zmanim.hebrewcalendar.YerushalmiYomiCalculator.getDafYomiYerushalmi(this);
    }

    public int getTekufasTishreiElapsedDays() {
        double jewishCalendarElapsedDays = getJewishCalendarElapsedDays(getJewishYear()) + (getDaysSinceStartOfJewishYear() - 1);
        Double.isNaN(jewishCalendarElapsedDays);
        double days = jewishCalendarElapsedDays + 0.5d;
        double jewishYear = getJewishYear() - 1;
        Double.isNaN(jewishYear);
        double solar = jewishYear * 365.25d;
        return (int) Math.floor(days - solar);
    }

    @Deprecated
    public boolean isVeseinTalUmatarStartDate() {
        if (this.inIsrael) {
            return getJewishMonth() == 8 && getJewishDayOfMonth() == 7;
        }
        if (getDayOfWeek() == 7) {
            return false;
        }
        return getDayOfWeek() == 1 ? getTekufasTishreiElapsedDays() == 48 || getTekufasTishreiElapsedDays() == 47 : getTekufasTishreiElapsedDays() == 47;
    }

    @Deprecated
    public boolean isVeseinTalUmatarStartingTonight() {
        if (this.inIsrael) {
            return getJewishMonth() == 8 && getJewishDayOfMonth() == 6;
        }
        if (getDayOfWeek() == 6) {
            return false;
        }
        return getDayOfWeek() == 7 ? getTekufasTishreiElapsedDays() == 47 || getTekufasTishreiElapsedDays() == 46 : getTekufasTishreiElapsedDays() == 46;
    }

    @Deprecated
    public boolean isVeseinTalUmatarRecited() {
        if (getJewishMonth() == 1 && getJewishDayOfMonth() < 15) {
            return true;
        }
        if (getJewishMonth() < 8) {
            return false;
        }
        return this.inIsrael ? getJewishMonth() != 8 || getJewishDayOfMonth() >= 7 : getTekufasTishreiElapsedDays() >= 47;
    }

    @Deprecated
    public boolean isVeseinBerachaRecited() {
        return !isVeseinTalUmatarRecited();
    }

    @Deprecated
    public boolean isMashivHaruachStartDate() {
        return getJewishMonth() == 7 && getJewishDayOfMonth() == 22;
    }

    @Deprecated
    public boolean isMashivHaruachEndDate() {
        return getJewishMonth() == 1 && getJewishDayOfMonth() == 15;
    }

    @Deprecated
    public boolean isMashivHaruachRecited() {
        JewishDate startDate = new JewishDate(getJewishYear(), 7, 22);
        JewishDate endDate = new JewishDate(getJewishYear(), 1, 15);
        return compareTo(startDate) > 0 && compareTo(endDate) < 0;
    }

    @Deprecated
    public boolean isMoridHatalRecited() {
        return !isMashivHaruachRecited() || isMashivHaruachStartDate() || isMashivHaruachEndDate();
    }

    public boolean isIsruChag() {
        int holidayIndex = getYomTovIndex();
        return holidayIndex == 35;
    }

    @Override // com.kosherjava.zmanim.hebrewcalendar.JewishDate
    public boolean equals(Object object) {
        if (this == object) {
            return true;
        }
        if (!(object instanceof JewishCalendar)) {
            return false;
        }
        JewishCalendar jewishCalendar = (JewishCalendar) object;
        return getAbsDate() == jewishCalendar.getAbsDate() && getInIsrael() == jewishCalendar.getInIsrael();
    }

    @Override // com.kosherjava.zmanim.hebrewcalendar.JewishDate
    public int hashCode() {
        int result = (17 * 37) + getClass().hashCode();
        return result + (result * 37) + getAbsDate() + (getInIsrael() ? 1 : 3);
    }
}
