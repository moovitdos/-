.class Lcom/sprd/settings/LocationGpsConfig$1;
.super Landroid/os/Handler;
.source "LocationGpsConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sprd/settings/LocationGpsConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprd/settings/LocationGpsConfig;


# direct methods
.method constructor <init>(Lcom/sprd/settings/LocationGpsConfig;)V
    .locals 0

    .prologue
    .line 185
    iput-object p1, p0, Lcom/sprd/settings/LocationGpsConfig$1;->this$0:Lcom/sprd/settings/LocationGpsConfig;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 190
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 202
    :goto_0
    return-void

    .line 192
    :pswitch_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 193
    .local v0, "port":I
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 194
    .local v2, "svrPort":Ljava/lang/String;
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 195
    .local v1, "svrAddr":Ljava/lang/String;
    iget-object v3, p0, Lcom/sprd/settings/LocationGpsConfig$1;->this$0:Lcom/sprd/settings/LocationGpsConfig;

    invoke-static {v3}, Lcom/sprd/settings/LocationGpsConfig;->access$000(Lcom/sprd/settings/LocationGpsConfig;)Landroid/preference/EditTextPreference;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 196
    iget-object v3, p0, Lcom/sprd/settings/LocationGpsConfig$1;->this$0:Lcom/sprd/settings/LocationGpsConfig;

    invoke-static {v3}, Lcom/sprd/settings/LocationGpsConfig;->access$100(Lcom/sprd/settings/LocationGpsConfig;)Landroid/preference/EditTextPreference;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 197
    iget-object v3, p0, Lcom/sprd/settings/LocationGpsConfig$1;->this$0:Lcom/sprd/settings/LocationGpsConfig;

    invoke-static {v3}, Lcom/sprd/settings/LocationGpsConfig;->access$200(Lcom/sprd/settings/LocationGpsConfig;)Landroid/preference/ListPreference;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 190
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
