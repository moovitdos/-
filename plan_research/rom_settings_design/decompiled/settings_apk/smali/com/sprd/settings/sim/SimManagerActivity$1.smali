.class Lcom/sprd/settings/sim/SimManagerActivity$1;
.super Ljava/lang/Object;
.source "SimManagerActivity.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprd/settings/sim/SimManagerActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprd/settings/sim/SimManagerActivity;


# direct methods
.method constructor <init>(Lcom/sprd/settings/sim/SimManagerActivity;)V
    .locals 0

    .prologue
    .line 157
    iput-object p1, p0, Lcom/sprd/settings/sim/SimManagerActivity$1;->this$0:Lcom/sprd/settings/sim/SimManagerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 161
    const/4 v0, 0x0

    .line 162
    .local v0, "replyMessage":I
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 163
    const/4 v0, 0x1

    .line 167
    :goto_0
    iget-object v1, p0, Lcom/sprd/settings/sim/SimManagerActivity$1;->this$0:Lcom/sprd/settings/sim/SimManagerActivity;

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "multi_reply_msg"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 170
    const/4 v1, 0x1

    return v1

    .line 165
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
