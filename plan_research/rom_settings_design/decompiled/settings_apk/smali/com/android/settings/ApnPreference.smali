.class public Lcom/android/settings/ApnPreference;
.super Landroid/preference/Preference;
.source "ApnPreference.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# static fields
.field private static mCurrentChecked:Landroid/widget/CompoundButton;

.field private static mSelectedKey:Ljava/lang/String;


# instance fields
.field private mId:I

.field private mIsSelected:Z

.field private mProtectFromCheckedChange:Z

.field private mRadioButton:Landroid/widget/RadioButton;

.field private mSelectable:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 55
    sput-object v0, Lcom/android/settings/ApnPreference;->mSelectedKey:Ljava/lang/String;

    .line 56
    sput-object v0, Lcom/android/settings/ApnPreference;->mCurrentChecked:Landroid/widget/CompoundButton;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 52
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/ApnPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 48
    const v0, 0x7f010013

    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/ApnPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v1, 0x0

    .line 44
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 57
    iput-boolean v1, p0, Lcom/android/settings/ApnPreference;->mProtectFromCheckedChange:Z

    .line 58
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/ApnPreference;->mSelectable:Z

    .line 63
    iput-boolean v1, p0, Lcom/android/settings/ApnPreference;->mIsSelected:Z

    .line 45
    return-void
.end method


# virtual methods
.method public getId()I
    .locals 1

    .prologue
    .line 157
    iget v0, p0, Lcom/android/settings/ApnPreference;->mId:I

    return v0
.end method

.method public getSelectable()Z
    .locals 1

    .prologue
    .line 148
    iget-boolean v0, p0, Lcom/android/settings/ApnPreference;->mSelectable:Z

    return v0
.end method

.method public getView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .param p1, "convertView"    # Landroid/view/View;
    .param p2, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v6, 0x0

    .line 68
    invoke-super {p0, p1, p2}, Landroid/preference/Preference;->getView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 70
    .local v2, "view":Landroid/view/View;
    const v4, 0x1010001

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 71
    .local v3, "widget":Landroid/view/View;
    if-eqz v3, :cond_1

    instance-of v4, v3, Landroid/widget/RadioButton;

    if-eqz v4, :cond_1

    move-object v1, v3

    .line 72
    check-cast v1, Landroid/widget/RadioButton;

    .line 74
    .local v1, "rb":Landroid/widget/RadioButton;
    iput-object v1, p0, Lcom/android/settings/ApnPreference;->mRadioButton:Landroid/widget/RadioButton;

    .line 75
    iget-boolean v4, p0, Lcom/android/settings/ApnPreference;->mSelectable:Z

    if-eqz v4, :cond_2

    .line 76
    invoke-virtual {v1, p0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 78
    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 81
    invoke-virtual {p0}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/android/settings/ApnPreference;->mSelectedKey:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 82
    .local v0, "isChecked":Z
    if-eqz v0, :cond_0

    .line 83
    sput-object v1, Lcom/android/settings/ApnPreference;->mCurrentChecked:Landroid/widget/CompoundButton;

    .line 84
    invoke-virtual {p0}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/android/settings/ApnPreference;->mSelectedKey:Ljava/lang/String;

    .line 87
    :cond_0
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/settings/ApnPreference;->mProtectFromCheckedChange:Z

    .line 88
    invoke-virtual {v1, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 91
    iput-boolean v6, p0, Lcom/android/settings/ApnPreference;->mProtectFromCheckedChange:Z

    .line 97
    .end local v0    # "isChecked":Z
    .end local v1    # "rb":Landroid/widget/RadioButton;
    :cond_1
    :goto_0
    iget v4, p0, Lcom/android/settings/ApnPreference;->mId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 100
    return-object v2

    .line 93
    .restart local v1    # "rb":Landroid/widget/RadioButton;
    :cond_2
    const/16 v4, 0x8

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 5
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 124
    const-string v0, "ApnPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    iget-boolean v0, p0, Lcom/android/settings/ApnPreference;->mProtectFromCheckedChange:Z

    if-eqz v0, :cond_0

    .line 140
    :goto_0
    return-void

    .line 129
    :cond_0
    if-eqz p2, :cond_2

    .line 130
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/ApnPreference;->mIsSelected:Z

    .line 131
    sget-object v0, Lcom/android/settings/ApnPreference;->mCurrentChecked:Landroid/widget/CompoundButton;

    if-eqz v0, :cond_1

    .line 132
    sget-object v0, Lcom/android/settings/ApnPreference;->mCurrentChecked:Landroid/widget/CompoundButton;

    invoke-virtual {v0, v3}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 134
    :cond_1
    sput-object p1, Lcom/android/settings/ApnPreference;->mCurrentChecked:Landroid/widget/CompoundButton;

    goto :goto_0

    .line 136
    :cond_2
    iput-boolean v3, p0, Lcom/android/settings/ApnPreference;->mIsSelected:Z

    .line 137
    sput-object v4, Lcom/android/settings/ApnPreference;->mCurrentChecked:Landroid/widget/CompoundButton;

    .line 138
    sput-object v4, Lcom/android/settings/ApnPreference;->mSelectedKey:Ljava/lang/String;

    goto :goto_0
.end method

.method public setChecked(Z)V
    .locals 2
    .param p1, "checked"    # Z

    .prologue
    .line 113
    const-string v0, "ApnPreference"

    const-string v1, "setChecked()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    invoke-virtual {p0}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/ApnPreference;->mSelectedKey:Ljava/lang/String;

    .line 115
    iget-boolean v0, p0, Lcom/android/settings/ApnPreference;->mIsSelected:Z

    if-eq p1, v0, :cond_0

    .line 116
    iput-boolean p1, p0, Lcom/android/settings/ApnPreference;->mIsSelected:Z

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/android/settings/ApnPreference;->mRadioButton:Landroid/widget/RadioButton;

    if-eqz v0, :cond_1

    .line 119
    iget-object v0, p0, Lcom/android/settings/ApnPreference;->mRadioButton:Landroid/widget/RadioButton;

    iget-boolean v1, p0, Lcom/android/settings/ApnPreference;->mIsSelected:Z

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 121
    :cond_1
    return-void
.end method

.method public setId(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 153
    iput p1, p0, Lcom/android/settings/ApnPreference;->mId:I

    .line 154
    return-void
.end method

.method public setSelectable(Z)V
    .locals 0
    .param p1, "selectable"    # Z

    .prologue
    .line 144
    iput-boolean p1, p0, Lcom/android/settings/ApnPreference;->mSelectable:Z

    .line 145
    return-void
.end method
