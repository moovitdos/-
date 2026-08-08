.class public Lcom/android/settings/wifi/WifiApDialog;
.super Landroid/app/AlertDialog;
.source "WifiApDialog.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# static fields
.field private static final DEFAULT_LIMIT:I


# instance fields
.field private mConnectedUser:I

.field private mConnectedUserPref:Landroid/widget/Spinner;

.field private final mListener:Landroid/content/DialogInterface$OnClickListener;

.field private mPassword:Landroid/widget/EditText;

.field private mSecurity:Landroid/widget/Spinner;

.field private mSecurityTypeIndex:I

.field private mSsid:Landroid/widget/TextView;

.field private mView:Landroid/view/View;

.field mWifiConfig:Landroid/net/wifi/WifiConfiguration;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 65
    const-string v0, "ro.wifi.softap.maxstanum"

    const/16 v1, 0x8

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/settings/wifi/WifiApDialog;->DEFAULT_LIMIT:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Landroid/net/wifi/WifiConfiguration;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;
    .param p3, "wifiConfig"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 74
    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 66
    sget v0, Lcom/android/settings/wifi/WifiApDialog;->DEFAULT_LIMIT:I

    iput v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mConnectedUser:I

    .line 67
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mSecurityTypeIndex:I

    .line 75
    iput-object p2, p0, Lcom/android/settings/wifi/WifiApDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    .line 76
    iput-object p3, p0, Lcom/android/settings/wifi/WifiApDialog;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    .line 77
    if-eqz p3, :cond_0

    .line 78
    invoke-static {p3}, Lcom/android/settings/wifi/WifiApDialog;->getSecurityTypeIndex(Landroid/net/wifi/WifiConfiguration;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mSecurityTypeIndex:I

    .line 80
    :cond_0
    return-void
.end method

.method public static getSecurityTypeIndex(Landroid/net/wifi/WifiConfiguration;)I
    .locals 2
    .param p0, "wifiConfig"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    const/4 v0, 0x1

    .line 83
    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v1, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 88
    :goto_0
    return v0

    .line 85
    :cond_0
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 86
    const/4 v0, 0x2

    goto :goto_0

    .line 88
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private showSecurityFields()V
    .locals 2

    .prologue
    const v1, 0x7f0b01bb

    .line 250
    iget v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mSecurityTypeIndex:I

    if-nez v0, :cond_0

    .line 251
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 255
    :goto_0
    return-void

    .line 254
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private validate()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, -0x1

    .line 202
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mSsid:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mSsid:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->length()I

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    iget v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mSecurityTypeIndex:I

    if-eq v0, v3, :cond_1

    iget v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mSecurityTypeIndex:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/TextView;->length()I

    move-result v0

    const/16 v1, 0x8

    if-ge v0, v1, :cond_3

    .line 205
    :cond_2
    invoke-virtual {p0, v2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 209
    :goto_0
    return-void

    .line 207
    :cond_3
    invoke-virtual {p0, v2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .param p1, "editable"    # Landroid/text/Editable;

    .prologue
    .line 231
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiApDialog;->validate()V

    .line 232
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 228
    return-void
.end method

.method public getConfig()Landroid/net/wifi/WifiConfiguration;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 93
    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 101
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mSsid:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 102
    iget v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mConnectedUser:I

    iput v2, v0, Landroid/net/wifi/WifiConfiguration;->softApMaxNumSta:I

    .line 104
    iget v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mSecurityTypeIndex:I

    packed-switch v2, :pswitch_data_0

    .line 127
    const/4 v0, 0x0

    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_0
    :goto_0
    return-object v0

    .line 106
    .restart local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    :pswitch_0
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v2, v4}, Ljava/util/BitSet;->set(I)V

    goto :goto_0

    .line 110
    :pswitch_1
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->set(I)V

    .line 111
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v2, v4}, Ljava/util/BitSet;->set(I)V

    .line 112
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/TextView;->length()I

    move-result v2

    if-eqz v2, :cond_0

    .line 113
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 114
    .local v1, "password":Ljava/lang/String;
    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto :goto_0

    .line 119
    .end local v1    # "password":Ljava/lang/String;
    :pswitch_2
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->set(I)V

    .line 120
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v2, v4}, Ljava/util/BitSet;->set(I)V

    .line 121
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/TextView;->length()I

    move-result v2

    if-eqz v2, :cond_0

    .line 122
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 123
    .restart local v1    # "password":Ljava/lang/String;
    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto :goto_0

    .line 104
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 213
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v0

    .line 214
    .local v0, "pos":I
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    check-cast p1, Landroid/widget/CheckBox;

    .end local p1    # "view":Landroid/view/View;
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x90

    :goto_0
    or-int/lit8 v1, v1, 0x1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setInputType(I)V

    .line 218
    if-ltz v0, :cond_0

    .line 219
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setSelection(I)V

    .line 222
    :cond_0
    return-void

    .line 214
    :cond_1
    const/16 v1, 0x80

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 12
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v11, 0x7f0b01bd

    const v10, 0x7f0b01bc

    const/16 v7, 0x8

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 133
    invoke-virtual {p0}, Landroid/app/Dialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f0400a0

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/wifi/WifiApDialog;->mView:Landroid/view/View;

    .line 134
    iget-object v4, p0, Lcom/android/settings/wifi/WifiApDialog;->mView:Landroid/view/View;

    const v5, 0x7f0b01ba

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Spinner;

    iput-object v4, p0, Lcom/android/settings/wifi/WifiApDialog;->mSecurity:Landroid/widget/Spinner;

    .line 135
    iget-object v4, p0, Lcom/android/settings/wifi/WifiApDialog;->mView:Landroid/view/View;

    const v5, 0x7f0b01bf

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Spinner;

    iput-object v4, p0, Lcom/android/settings/wifi/WifiApDialog;->mConnectedUserPref:Landroid/widget/Spinner;

    .line 137
    iget-object v4, p0, Lcom/android/settings/wifi/WifiApDialog;->mView:Landroid/view/View;

    invoke-virtual {p0, v4}, Landroid/app/AlertDialog;->setView(Landroid/view/View;)V

    .line 138
    invoke-virtual {p0, v9}, Landroid/app/AlertDialog;->setInverseBackgroundForced(Z)V

    .line 140
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 142
    .local v1, "context":Landroid/content/Context;
    const v4, 0x7f09028d

    invoke-virtual {p0, v4}, Landroid/app/Dialog;->setTitle(I)V

    .line 143
    iget-object v4, p0, Lcom/android/settings/wifi/WifiApDialog;->mView:Landroid/view/View;

    const v5, 0x7f0b00ec

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    .line 144
    iget-object v4, p0, Lcom/android/settings/wifi/WifiApDialog;->mView:Landroid/view/View;

    const v5, 0x7f0b01b9

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/settings/wifi/WifiApDialog;->mSsid:Landroid/widget/TextView;

    .line 145
    iget-object v4, p0, Lcom/android/settings/wifi/WifiApDialog;->mView:Landroid/view/View;

    const v5, 0x7f0b01b6

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lcom/android/settings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    .line 146
    const-string v4, "ro.softap.maxnum.support"

    invoke-static {v4, v8}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 147
    iget-object v4, p0, Lcom/android/settings/wifi/WifiApDialog;->mView:Landroid/view/View;

    invoke-virtual {v4, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    .line 151
    :goto_0
    sget v4, Lcom/android/settings/wifi/WifiApDialog;->DEFAULT_LIMIT:I

    if-eq v4, v7, :cond_2

    .line 152
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 153
    .local v0, "arraySoftApMaxNum":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_1
    sget v4, Lcom/android/settings/wifi/WifiApDialog;->DEFAULT_LIMIT:I

    if-gt v2, v4, :cond_1

    .line 154
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 153
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 149
    .end local v0    # "arraySoftApMaxNum":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    .end local v2    # "i":I
    :cond_0
    iget-object v4, p0, Lcom/android/settings/wifi/WifiApDialog;->mView:Landroid/view/View;

    invoke-virtual {v4, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 156
    .restart local v0    # "arraySoftApMaxNum":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    .restart local v2    # "i":I
    :cond_1
    new-instance v3, Landroid/widget/ArrayAdapter;

    const v4, 0x1090008

    invoke-direct {v3, v1, v4, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 157
    .local v3, "mSoftApMaxNumStaAdapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    const v4, 0x1090009

    invoke-virtual {v3, v4}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 158
    iget-object v4, p0, Lcom/android/settings/wifi/WifiApDialog;->mConnectedUserPref:Landroid/widget/Spinner;

    invoke-virtual {v4, v3}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 160
    .end local v0    # "arraySoftApMaxNum":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    .end local v2    # "i":I
    .end local v3    # "mSoftApMaxNumStaAdapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    :cond_2
    const/4 v4, -0x1

    const v5, 0x7f09025b

    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/wifi/WifiApDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v4, v5, v6}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 161
    const/4 v4, -0x2

    const v5, 0x7f09025d

    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/wifi/WifiApDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v4, v5, v6}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 164
    iget-object v4, p0, Lcom/android/settings/wifi/WifiApDialog;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v4, :cond_6

    .line 165
    iget-object v4, p0, Lcom/android/settings/wifi/WifiApDialog;->mSsid:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/settings/wifi/WifiApDialog;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v5, v5, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 166
    iget-object v4, p0, Lcom/android/settings/wifi/WifiApDialog;->mSecurity:Landroid/widget/Spinner;

    iget v5, p0, Lcom/android/settings/wifi/WifiApDialog;->mSecurityTypeIndex:I

    invoke-virtual {v4, v5}, Landroid/widget/AbsSpinner;->setSelection(I)V

    .line 167
    iget-object v4, p0, Lcom/android/settings/wifi/WifiApDialog;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget v4, v4, Landroid/net/wifi/WifiConfiguration;->softApMaxNumSta:I

    sget v5, Lcom/android/settings/wifi/WifiApDialog;->DEFAULT_LIMIT:I

    if-le v4, v5, :cond_3

    .line 168
    iget-object v4, p0, Lcom/android/settings/wifi/WifiApDialog;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    sget v5, Lcom/android/settings/wifi/WifiApDialog;->DEFAULT_LIMIT:I

    iput v5, v4, Landroid/net/wifi/WifiConfiguration;->softApMaxNumSta:I

    .line 170
    :cond_3
    iget-object v4, p0, Lcom/android/settings/wifi/WifiApDialog;->mConnectedUserPref:Landroid/widget/Spinner;

    iget-object v5, p0, Lcom/android/settings/wifi/WifiApDialog;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget v5, v5, Landroid/net/wifi/WifiConfiguration;->softApMaxNumSta:I

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Landroid/widget/AbsSpinner;->setSelection(I)V

    .line 171
    iget v4, p0, Lcom/android/settings/wifi/WifiApDialog;->mSecurityTypeIndex:I

    if-eq v4, v9, :cond_4

    iget v4, p0, Lcom/android/settings/wifi/WifiApDialog;->mSecurityTypeIndex:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_5

    .line 173
    :cond_4
    iget-object v4, p0, Lcom/android/settings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    iget-object v5, p0, Lcom/android/settings/wifi/WifiApDialog;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v5, v5, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 180
    :cond_5
    :goto_2
    iget-object v4, p0, Lcom/android/settings/wifi/WifiApDialog;->mView:Landroid/view/View;

    invoke-virtual {v4, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    invoke-virtual {v4, v9}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 181
    iget-object v4, p0, Lcom/android/settings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    const/16 v5, 0x91

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setInputType(I)V

    .line 185
    iget-object v4, p0, Lcom/android/settings/wifi/WifiApDialog;->mSsid:Landroid/widget/TextView;

    new-array v5, v9, [Landroid/text/InputFilter;

    new-instance v6, Lcom/android/settings/bluetooth/Utf8ByteLengthFilter;

    const/16 v7, 0x20

    invoke-direct {v6, v7}, Lcom/android/settings/bluetooth/Utf8ByteLengthFilter;-><init>(I)V

    aput-object v6, v5, v8

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    .line 186
    iget-object v4, p0, Lcom/android/settings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    new-array v5, v9, [Landroid/text/InputFilter;

    new-instance v6, Lcom/android/settings/bluetooth/Utf8ByteLengthFilter;

    const/16 v7, 0x3f

    invoke-direct {v6, v7}, Lcom/android/settings/bluetooth/Utf8ByteLengthFilter;-><init>(I)V

    aput-object v6, v5, v8

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    .line 187
    iget-object v4, p0, Lcom/android/settings/wifi/WifiApDialog;->mSsid:Landroid/widget/TextView;

    invoke-virtual {v4, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 188
    iget-object v4, p0, Lcom/android/settings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v4, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 189
    iget-object v4, p0, Lcom/android/settings/wifi/WifiApDialog;->mView:Landroid/view/View;

    invoke-virtual {v4, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    invoke-virtual {v4, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 190
    iget-object v4, p0, Lcom/android/settings/wifi/WifiApDialog;->mSecurity:Landroid/widget/Spinner;

    invoke-virtual {v4, p0}, Landroid/widget/AdapterView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 191
    iget-object v4, p0, Lcom/android/settings/wifi/WifiApDialog;->mConnectedUserPref:Landroid/widget/Spinner;

    invoke-virtual {v4, p0}, Landroid/widget/AdapterView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 192
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 194
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiApDialog;->showSecurityFields()V

    .line 195
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiApDialog;->validate()V

    .line 197
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/16 v5, 0x10

    invoke-virtual {v4, v5}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 199
    return-void

    .line 177
    :cond_6
    iget-object v4, p0, Lcom/android/settings/wifi/WifiApDialog;->mConnectedUserPref:Landroid/widget/Spinner;

    sget v5, Lcom/android/settings/wifi/WifiApDialog;->DEFAULT_LIMIT:I

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Landroid/widget/AbsSpinner;->setSelection(I)V

    goto :goto_2
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 236
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mSecurity:Landroid/widget/Spinner;

    if-ne p1, v0, :cond_1

    .line 237
    iput p3, p0, Lcom/android/settings/wifi/WifiApDialog;->mSecurityTypeIndex:I

    .line 238
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiApDialog;->showSecurityFields()V

    .line 242
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiApDialog;->validate()V

    .line 243
    return-void

    .line 239
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mConnectedUserPref:Landroid/widget/Spinner;

    if-ne p1, v0, :cond_0

    .line 240
    add-int/lit8 v0, p3, 0x1

    iput v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mConnectedUser:I

    goto :goto_0
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 247
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 225
    return-void
.end method
