.class Lcom/duoqin/settings/AppPickerActivity$AppAdapter;
.super Landroid/widget/BaseAdapter;
.source "AppPickerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/duoqin/settings/AppPickerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AppAdapter"
.end annotation


# instance fields
.field private inflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/duoqin/settings/AppPickerActivity;


# direct methods
.method public constructor <init>(Lcom/duoqin/settings/AppPickerActivity;)V
    .locals 1

    .prologue
    .line 76
    iput-object p1, p0, Lcom/duoqin/settings/AppPickerActivity$AppAdapter;->this$0:Lcom/duoqin/settings/AppPickerActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 77
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/duoqin/settings/AppPickerActivity$AppAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 78
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p1, v0}, Lcom/duoqin/settings/AppPickerActivity;->access$002(Lcom/duoqin/settings/AppPickerActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 79
    invoke-virtual {p1}, Lcom/duoqin/settings/AppPickerActivity;->getSystemApps()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/duoqin/settings/AppPickerActivity;->access$002(Lcom/duoqin/settings/AppPickerActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 80
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/duoqin/settings/AppPickerActivity$AppAdapter;->this$0:Lcom/duoqin/settings/AppPickerActivity;

    invoke-static {v0}, Lcom/duoqin/settings/AppPickerActivity;->access$000(Lcom/duoqin/settings/AppPickerActivity;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/duoqin/settings/AppPickerActivity$AppAdapter;->this$0:Lcom/duoqin/settings/AppPickerActivity;

    invoke-static {v0}, Lcom/duoqin/settings/AppPickerActivity;->access$000(Lcom/duoqin/settings/AppPickerActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 87
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 93
    iget-object v0, p0, Lcom/duoqin/settings/AppPickerActivity$AppAdapter;->this$0:Lcom/duoqin/settings/AppPickerActivity;

    invoke-static {v0}, Lcom/duoqin/settings/AppPickerActivity;->access$000(Lcom/duoqin/settings/AppPickerActivity;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/duoqin/settings/AppPickerActivity$AppAdapter;->this$0:Lcom/duoqin/settings/AppPickerActivity;

    invoke-static {v0}, Lcom/duoqin/settings/AppPickerActivity;->access$000(Lcom/duoqin/settings/AppPickerActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 96
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 102
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 108
    if-nez p2, :cond_0

    .line 109
    iget-object v2, p0, Lcom/duoqin/settings/AppPickerActivity$AppAdapter;->inflater:Landroid/view/LayoutInflater;

    const v3, 0x7f040008

    invoke-virtual {v2, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 110
    new-instance v1, Lcom/duoqin/settings/AppPickerActivity$Holder;

    iget-object v2, p0, Lcom/duoqin/settings/AppPickerActivity$AppAdapter;->this$0:Lcom/duoqin/settings/AppPickerActivity;

    invoke-direct {v1, v2, v5}, Lcom/duoqin/settings/AppPickerActivity$Holder;-><init>(Lcom/duoqin/settings/AppPickerActivity;Lcom/duoqin/settings/AppPickerActivity$1;)V

    .line 111
    .local v1, "holder":Lcom/duoqin/settings/AppPickerActivity$Holder;
    const v2, 0x7f0b0017

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/duoqin/settings/AppPickerActivity$Holder;->titleView:Landroid/widget/TextView;

    .line 112
    const v2, 0x7f0b0018

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    iput-object v2, v1, Lcom/duoqin/settings/AppPickerActivity$Holder;->checkBox:Landroid/widget/CheckBox;

    .line 113
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 117
    :goto_0
    iget-object v2, p0, Lcom/duoqin/settings/AppPickerActivity$AppAdapter;->this$0:Lcom/duoqin/settings/AppPickerActivity;

    invoke-static {v2}, Lcom/duoqin/settings/AppPickerActivity;->access$000(Lcom/duoqin/settings/AppPickerActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 118
    .local v0, "componentName":Landroid/content/ComponentName;
    iget-object v2, v1, Lcom/duoqin/settings/AppPickerActivity$Holder;->titleView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/duoqin/settings/AppPickerActivity$AppAdapter;->this$0:Lcom/duoqin/settings/AppPickerActivity;

    invoke-static {v3, v0}, Lcom/duoqin/settings/DuoqinUtils;->loadAppLabel(Landroid/content/Context;Landroid/content/ComponentName;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 120
    iget-object v2, p0, Lcom/duoqin/settings/AppPickerActivity$AppAdapter;->this$0:Lcom/duoqin/settings/AppPickerActivity;

    invoke-static {v2}, Lcom/duoqin/settings/AppPickerActivity;->access$200(Lcom/duoqin/settings/AppPickerActivity;)Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/duoqin/settings/AppPickerActivity$AppAdapter;->this$0:Lcom/duoqin/settings/AppPickerActivity;

    invoke-static {v2}, Lcom/duoqin/settings/AppPickerActivity;->access$200(Lcom/duoqin/settings/AppPickerActivity;)Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 121
    iget-object v2, v1, Lcom/duoqin/settings/AppPickerActivity$Holder;->checkBox:Landroid/widget/CheckBox;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 122
    iget-object v2, v1, Lcom/duoqin/settings/AppPickerActivity$Holder;->checkBox:Landroid/widget/CheckBox;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 127
    :goto_1
    return-object p2

    .line 115
    .end local v0    # "componentName":Landroid/content/ComponentName;
    .end local v1    # "holder":Lcom/duoqin/settings/AppPickerActivity$Holder;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/duoqin/settings/AppPickerActivity$Holder;

    .restart local v1    # "holder":Lcom/duoqin/settings/AppPickerActivity$Holder;
    goto :goto_0

    .line 124
    .restart local v0    # "componentName":Landroid/content/ComponentName;
    :cond_1
    iget-object v2, v1, Lcom/duoqin/settings/AppPickerActivity$Holder;->checkBox:Landroid/widget/CheckBox;

    invoke-virtual {v2, v4}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 125
    iget-object v2, v1, Lcom/duoqin/settings/AppPickerActivity$Holder;->checkBox:Landroid/widget/CheckBox;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method
