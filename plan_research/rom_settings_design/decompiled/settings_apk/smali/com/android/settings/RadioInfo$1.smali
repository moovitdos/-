.class Lcom/android/settings/RadioInfo$1;
.super Landroid/telephony/PhoneStateListener;
.source "RadioInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/RadioInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/RadioInfo;


# direct methods
.method constructor <init>(Lcom/android/settings/RadioInfo;)V
    .locals 0

    .prologue
    .line 187
    iput-object p1, p0, Lcom/android/settings/RadioInfo$1;->this$0:Lcom/android/settings/RadioInfo;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallForwardingIndicatorChanged(Z)V
    .locals 1
    .param p1, "cfi"    # Z

    .prologue
    .line 214
    iget-object v0, p0, Lcom/android/settings/RadioInfo$1;->this$0:Lcom/android/settings/RadioInfo;

    invoke-static {v0, p1}, Lcom/android/settings/RadioInfo;->access$802(Lcom/android/settings/RadioInfo;Z)Z

    .line 215
    iget-object v0, p0, Lcom/android/settings/RadioInfo$1;->this$0:Lcom/android/settings/RadioInfo;

    invoke-static {v0}, Lcom/android/settings/RadioInfo;->access$900(Lcom/android/settings/RadioInfo;)V

    .line 216
    return-void
.end method

.method public onCellInfoChanged(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/CellInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 220
    .local p1, "arrayCi":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellInfo;>;"
    iget-object v0, p0, Lcom/android/settings/RadioInfo$1;->this$0:Lcom/android/settings/RadioInfo;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCellInfoChanged: arrayCi="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/RadioInfo;->access$1000(Lcom/android/settings/RadioInfo;Ljava/lang/String;)V

    .line 221
    iget-object v0, p0, Lcom/android/settings/RadioInfo$1;->this$0:Lcom/android/settings/RadioInfo;

    invoke-static {v0, p1}, Lcom/android/settings/RadioInfo;->access$1100(Lcom/android/settings/RadioInfo;Ljava/util/List;)V

    .line 222
    return-void
.end method

.method public onCellLocationChanged(Landroid/telephony/CellLocation;)V
    .locals 1
    .param p1, "location"    # Landroid/telephony/CellLocation;

    .prologue
    .line 203
    iget-object v0, p0, Lcom/android/settings/RadioInfo$1;->this$0:Lcom/android/settings/RadioInfo;

    invoke-static {v0, p1}, Lcom/android/settings/RadioInfo;->access$500(Lcom/android/settings/RadioInfo;Landroid/telephony/CellLocation;)V

    .line 204
    return-void
.end method

.method public onDataActivity(I)V
    .locals 1
    .param p1, "direction"    # I

    .prologue
    .line 198
    iget-object v0, p0, Lcom/android/settings/RadioInfo$1;->this$0:Lcom/android/settings/RadioInfo;

    invoke-static {v0}, Lcom/android/settings/RadioInfo;->access$400(Lcom/android/settings/RadioInfo;)V

    .line 199
    return-void
.end method

.method public onDataConnectionStateChanged(I)V
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 190
    iget-object v0, p0, Lcom/android/settings/RadioInfo$1;->this$0:Lcom/android/settings/RadioInfo;

    invoke-static {v0}, Lcom/android/settings/RadioInfo;->access$000(Lcom/android/settings/RadioInfo;)V

    .line 191
    iget-object v0, p0, Lcom/android/settings/RadioInfo$1;->this$0:Lcom/android/settings/RadioInfo;

    invoke-static {v0}, Lcom/android/settings/RadioInfo;->access$100(Lcom/android/settings/RadioInfo;)V

    .line 192
    iget-object v0, p0, Lcom/android/settings/RadioInfo$1;->this$0:Lcom/android/settings/RadioInfo;

    invoke-static {v0}, Lcom/android/settings/RadioInfo;->access$200(Lcom/android/settings/RadioInfo;)V

    .line 193
    iget-object v0, p0, Lcom/android/settings/RadioInfo$1;->this$0:Lcom/android/settings/RadioInfo;

    invoke-static {v0}, Lcom/android/settings/RadioInfo;->access$300(Lcom/android/settings/RadioInfo;)V

    .line 194
    return-void
.end method

.method public onMessageWaitingIndicatorChanged(Z)V
    .locals 1
    .param p1, "mwi"    # Z

    .prologue
    .line 208
    iget-object v0, p0, Lcom/android/settings/RadioInfo$1;->this$0:Lcom/android/settings/RadioInfo;

    invoke-static {v0, p1}, Lcom/android/settings/RadioInfo;->access$602(Lcom/android/settings/RadioInfo;Z)Z

    .line 209
    iget-object v0, p0, Lcom/android/settings/RadioInfo$1;->this$0:Lcom/android/settings/RadioInfo;

    invoke-static {v0}, Lcom/android/settings/RadioInfo;->access$700(Lcom/android/settings/RadioInfo;)V

    .line 210
    return-void
.end method
