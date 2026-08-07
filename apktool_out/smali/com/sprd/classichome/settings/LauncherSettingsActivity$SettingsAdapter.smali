.class Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingsAdapter;
.super Landroid/widget/BaseAdapter;
.source "LauncherSettingsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sprd/classichome/settings/LauncherSettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SettingsAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingsAdapter$SwitchHolder;,
        Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingsAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingItem;",
            ">;)V"
        }
    .end annotation

    .line 1083
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 1084
    iput-object p1, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingsAdapter;->mContext:Landroid/content/Context;

    .line 1085
    iput-object p2, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingsAdapter;->mData:Ljava/util/List;

    .line 1086
    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .line 1123
    const/4 v0, 0x0

    return v0
.end method

.method public getCount()I
    .locals 1

    .line 1090
    iget-object v0, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingsAdapter;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 1095
    iget-object v0, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingsAdapter;->mData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    .line 1100
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 1110
    iget-object v0, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingsAdapter;->mData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingItem;

    iget p1, p1, Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingItem;->type:I

    return p1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9

    .line 1134
    iget-object v0, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingsAdapter;->mData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingItem;

    .line 1136
    iget v0, p1, Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingItem;->type:I

    const/4 v1, 0x0

    const/4 v2, 0x5

    if-nez v0, :cond_1

    .line 1138
    if-nez p2, :cond_0

    .line 1142
    new-instance p2, Landroid/widget/TextView;

    iget-object p3, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingsAdapter;->mContext:Landroid/content/Context;

    const v0, 0x1010208

    invoke-direct {p2, p3, v1, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 1144
    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setGravity(I)V

    goto :goto_0

    .line 1146
    :cond_0
    check-cast p2, Landroid/widget/TextView;

    .line 1148
    :goto_0
    iget-object p1, p1, Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingItem;->title:Ljava/lang/String;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1149
    return-object p2

    .line 1150
    :cond_1
    iget v0, p1, Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingItem;->type:I

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-ne v0, v3, :cond_5

    .line 1151
    nop

    .line 1153
    const/16 p3, 0x8

    if-nez p2, :cond_2

    .line 1158
    new-instance p2, Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingsAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p2, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1159
    invoke-virtual {p2, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1160
    const/16 v0, 0x10

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 1161
    const/4 v0, 0x6

    invoke-virtual {p2, p3, v0, p3, v0}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 1166
    new-instance v0, Landroid/widget/Switch;

    iget-object v3, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingsAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    .line 1169
    invoke-virtual {v0, v4}, Landroid/widget/Switch;->setFocusable(Z)V

    .line 1170
    invoke-virtual {v0, v4}, Landroid/widget/Switch;->setFocusableInTouchMode(Z)V

    .line 1171
    invoke-virtual {v0, v4}, Landroid/widget/Switch;->setClickable(Z)V

    .line 1172
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x2

    invoke-direct {v3, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p2, v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1176
    new-instance v3, Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingsAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v3, v6}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1177
    const/4 v6, 0x1

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1178
    new-instance v6, Landroid/widget/TextView;

    iget-object v7, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingsAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v6, v7}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1179
    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 1180
    new-instance v7, Landroid/widget/TextView;

    iget-object v8, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingsAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v7, v8}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1181
    invoke-virtual {v7, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 1182
    const/high16 v2, 0x41300000    # 11.0f

    invoke-virtual {v7, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1183
    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1184
    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1185
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-direct {v2, v4, v5, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 1187
    invoke-virtual {p2, v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1189
    new-instance v2, Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingsAdapter$SwitchHolder;

    invoke-direct {v2, v1}, Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingsAdapter$SwitchHolder;-><init>(Lcom/sprd/classichome/settings/LauncherSettingsActivity$1;)V

    .line 1190
    iput-object v6, v2, Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingsAdapter$SwitchHolder;->title:Landroid/widget/TextView;

    .line 1191
    iput-object v7, v2, Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingsAdapter$SwitchHolder;->summary:Landroid/widget/TextView;

    .line 1192
    iput-object v0, v2, Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingsAdapter$SwitchHolder;->toggle:Landroid/widget/Switch;

    .line 1193
    invoke-virtual {p2, v2}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 1194
    nop

    .line 1195
    goto :goto_1

    .line 1196
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingsAdapter$SwitchHolder;

    .line 1199
    :goto_1
    iget-object v0, v2, Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingsAdapter$SwitchHolder;->title:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingItem;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1200
    iget-object v0, v2, Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingsAdapter$SwitchHolder;->summary:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingItem;->summary:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1201
    iget-object v0, v2, Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingsAdapter$SwitchHolder;->summary:Landroid/widget/TextView;

    .line 1202
    iget-object v1, p1, Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingItem;->summary:Ljava/lang/String;

    if-eqz v1, :cond_4

    iget-object v1, p1, Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingItem;->summary:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_3

    goto :goto_2

    .line 1203
    :cond_3
    goto :goto_3

    :cond_4
    :goto_2
    const/16 v4, 0x8

    .line 1201
    :goto_3
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1204
    iget-object p3, v2, Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingsAdapter$SwitchHolder;->toggle:Landroid/widget/Switch;

    iget-boolean p1, p1, Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingItem;->checked:Z

    invoke-virtual {p3, p1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 1205
    return-object p2

    .line 1207
    :cond_5
    nop

    .line 1209
    if-nez p2, :cond_6

    .line 1210
    iget-object p2, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingsAdapter;->mContext:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x1090004

    invoke-virtual {p2, v0, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 1211
    new-instance p3, Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingsAdapter$ViewHolder;

    invoke-direct {p3, v1}, Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingsAdapter$ViewHolder;-><init>(Lcom/sprd/classichome/settings/LauncherSettingsActivity$1;)V

    .line 1212
    const v0, 0x1020014

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingsAdapter$ViewHolder;->title:Landroid/widget/TextView;

    .line 1213
    const v0, 0x1020015

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingsAdapter$ViewHolder;->summary:Landroid/widget/TextView;

    .line 1217
    iget-object v0, p3, Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingsAdapter$ViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 1218
    iget-object v0, p3, Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingsAdapter$ViewHolder;->summary:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 1219
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_4

    .line 1221
    :cond_6
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingsAdapter$ViewHolder;

    .line 1224
    :goto_4
    iget-object v0, p3, Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingsAdapter$ViewHolder;->title:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingItem;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1225
    iget-object p3, p3, Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingsAdapter$ViewHolder;->summary:Landroid/widget/TextView;

    iget-object p1, p1, Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingItem;->summary:Ljava/lang/String;

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1226
    return-object p2
.end method

.method public getViewTypeCount()I
    .locals 1

    .line 1105
    const/4 v0, 0x3

    return v0
.end method

.method public isEnabled(I)Z
    .locals 2

    .line 1128
    iget-object v0, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingsAdapter;->mData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingItem;

    iget p1, p1, Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingItem;->type:I

    .line 1129
    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method
