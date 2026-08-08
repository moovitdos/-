.class Lcom/duoqin/settings/RemoteServiceLogActivity$LogAdapter;
.super Landroid/widget/CursorAdapter;
.source "RemoteServiceLogActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/duoqin/settings/RemoteServiceLogActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LogAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/duoqin/settings/RemoteServiceLogActivity;


# direct methods
.method constructor <init>(Lcom/duoqin/settings/RemoteServiceLogActivity;Landroid/content/Context;Landroid/database/Cursor;Z)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "c"    # Landroid/database/Cursor;
    .param p4, "autoRequery"    # Z

    .prologue
    .line 61
    iput-object p1, p0, Lcom/duoqin/settings/RemoteServiceLogActivity$LogAdapter;->this$0:Lcom/duoqin/settings/RemoteServiceLogActivity;

    .line 62
    invoke-direct {p0, p2, p3, p4}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V

    .line 63
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 8
    .param p1, "view"    # Landroid/view/View;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 73
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_0

    .line 74
    new-instance v0, Lcom/duoqin/settings/RemoteServiceLogActivity$Holder;

    iget-object v5, p0, Lcom/duoqin/settings/RemoteServiceLogActivity$LogAdapter;->this$0:Lcom/duoqin/settings/RemoteServiceLogActivity;

    const/4 v6, 0x0

    invoke-direct {v0, v5, v6}, Lcom/duoqin/settings/RemoteServiceLogActivity$Holder;-><init>(Lcom/duoqin/settings/RemoteServiceLogActivity;Lcom/duoqin/settings/RemoteServiceLogActivity$1;)V

    .line 75
    .local v0, "holder":Lcom/duoqin/settings/RemoteServiceLogActivity$Holder;
    const v5, 0x7f0b0098

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v0, Lcom/duoqin/settings/RemoteServiceLogActivity$Holder;->nameTV:Landroid/widget/TextView;

    .line 76
    const v5, 0x7f0b00ef

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v0, Lcom/duoqin/settings/RemoteServiceLogActivity$Holder;->numberTV:Landroid/widget/TextView;

    .line 77
    const v5, 0x7f0b0160

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v0, Lcom/duoqin/settings/RemoteServiceLogActivity$Holder;->timeTV:Landroid/widget/TextView;

    .line 78
    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 82
    :goto_0
    const-string v5, "name"

    invoke-interface {p3, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 83
    .local v1, "name":Ljava/lang/String;
    const-string v5, "phonenumber"

    invoke-interface {p3, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 84
    .local v2, "number":Ljava/lang/String;
    const-string v5, "timestamp"

    invoke-interface {p3, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p3, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 85
    .local v3, "time":J
    iget-object v5, v0, Lcom/duoqin/settings/RemoteServiceLogActivity$Holder;->nameTV:Landroid/widget/TextView;

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    iget-object v5, v0, Lcom/duoqin/settings/RemoteServiceLogActivity$Holder;->numberTV:Landroid/widget/TextView;

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    if-eqz v1, :cond_1

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 88
    iget-object v5, v0, Lcom/duoqin/settings/RemoteServiceLogActivity$Holder;->numberTV:Landroid/widget/TextView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 92
    :goto_1
    iget-object v5, v0, Lcom/duoqin/settings/RemoteServiceLogActivity$Holder;->timeTV:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/duoqin/settings/RemoteServiceLogActivity$LogAdapter;->this$0:Lcom/duoqin/settings/RemoteServiceLogActivity;

    invoke-virtual {v6}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x20015

    invoke-static {v6, v3, v4, v7}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    return-void

    .line 80
    .end local v0    # "holder":Lcom/duoqin/settings/RemoteServiceLogActivity$Holder;
    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "number":Ljava/lang/String;
    .end local v3    # "time":J
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoqin/settings/RemoteServiceLogActivity$Holder;

    .restart local v0    # "holder":Lcom/duoqin/settings/RemoteServiceLogActivity$Holder;
    goto :goto_0

    .line 90
    .restart local v1    # "name":Ljava/lang/String;
    .restart local v2    # "number":Ljava/lang/String;
    .restart local v3    # "time":J
    :cond_1
    iget-object v5, v0, Lcom/duoqin/settings/RemoteServiceLogActivity$Holder;->numberTV:Landroid/widget/TextView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cursor"    # Landroid/database/Cursor;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 66
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f04007f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
