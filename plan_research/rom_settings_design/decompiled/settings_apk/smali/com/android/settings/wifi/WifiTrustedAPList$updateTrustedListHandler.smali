.class Lcom/android/settings/wifi/WifiTrustedAPList$updateTrustedListHandler;
.super Landroid/os/Handler;
.source "WifiTrustedAPList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/WifiTrustedAPList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "updateTrustedListHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WifiTrustedAPList;


# direct methods
.method private constructor <init>(Lcom/android/settings/wifi/WifiTrustedAPList;)V
    .locals 0

    .prologue
    .line 155
    iput-object p1, p0, Lcom/android/settings/wifi/WifiTrustedAPList$updateTrustedListHandler;->this$0:Lcom/android/settings/wifi/WifiTrustedAPList;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/wifi/WifiTrustedAPList;Lcom/android/settings/wifi/WifiTrustedAPList$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/settings/wifi/WifiTrustedAPList;
    .param p2, "x1"    # Lcom/android/settings/wifi/WifiTrustedAPList$1;

    .prologue
    .line 155
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiTrustedAPList$updateTrustedListHandler;-><init>(Lcom/android/settings/wifi/WifiTrustedAPList;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 11
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v9, 0x0

    .line 159
    iget v7, p1, Landroid/os/Message;->what:I

    packed-switch v7, :pswitch_data_0

    .line 197
    :goto_0
    return-void

    .line 161
    :pswitch_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    .line 162
    .local v2, "data":Landroid/os/Bundle;
    const-string v7, "MOVE_ACTION"

    invoke-virtual {v2, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 163
    .local v6, "moveAction":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/settings/wifi/WifiTrustedAPList$updateTrustedListHandler;->this$0:Lcom/android/settings/wifi/WifiTrustedAPList;

    invoke-static {v7, v9}, Lcom/android/settings/wifi/WifiTrustedAPList;->access$100(Lcom/android/settings/wifi/WifiTrustedAPList;Z)V

    .line 165
    iget-object v7, p0, Lcom/android/settings/wifi/WifiTrustedAPList$updateTrustedListHandler;->this$0:Lcom/android/settings/wifi/WifiTrustedAPList;

    invoke-static {v7}, Lcom/android/settings/wifi/WifiTrustedAPList;->access$300(Lcom/android/settings/wifi/WifiTrustedAPList;)Ljava/util/List;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/wifi/WifiTrustedAPList$updateTrustedListHandler;->this$0:Lcom/android/settings/wifi/WifiTrustedAPList;

    invoke-static {v8}, Lcom/android/settings/wifi/WifiTrustedAPList;->access$200(Lcom/android/settings/wifi/WifiTrustedAPList;)I

    move-result v8

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/settings/wifi/WifiTrustedAPList$TrustedAccessPoint;

    .line 166
    .local v5, "mCurAp":Lcom/android/settings/wifi/WifiTrustedAPList$TrustedAccessPoint;
    const-string v7, "UP"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/android/settings/wifi/WifiTrustedAPList$updateTrustedListHandler;->this$0:Lcom/android/settings/wifi/WifiTrustedAPList;

    invoke-static {v7}, Lcom/android/settings/wifi/WifiTrustedAPList;->access$200(Lcom/android/settings/wifi/WifiTrustedAPList;)I

    move-result v7

    if-lez v7, :cond_1

    .line 167
    iget-object v7, p0, Lcom/android/settings/wifi/WifiTrustedAPList$updateTrustedListHandler;->this$0:Lcom/android/settings/wifi/WifiTrustedAPList;

    invoke-static {v7}, Lcom/android/settings/wifi/WifiTrustedAPList;->access$300(Lcom/android/settings/wifi/WifiTrustedAPList;)Ljava/util/List;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/wifi/WifiTrustedAPList$updateTrustedListHandler;->this$0:Lcom/android/settings/wifi/WifiTrustedAPList;

    invoke-static {v8}, Lcom/android/settings/wifi/WifiTrustedAPList;->access$200(Lcom/android/settings/wifi/WifiTrustedAPList;)I

    move-result v8

    iget-object v9, p0, Lcom/android/settings/wifi/WifiTrustedAPList$updateTrustedListHandler;->this$0:Lcom/android/settings/wifi/WifiTrustedAPList;

    invoke-static {v9}, Lcom/android/settings/wifi/WifiTrustedAPList;->access$300(Lcom/android/settings/wifi/WifiTrustedAPList;)Ljava/util/List;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings/wifi/WifiTrustedAPList$updateTrustedListHandler;->this$0:Lcom/android/settings/wifi/WifiTrustedAPList;

    invoke-static {v10}, Lcom/android/settings/wifi/WifiTrustedAPList;->access$200(Lcom/android/settings/wifi/WifiTrustedAPList;)I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v7, v8, v9}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 168
    iget-object v7, p0, Lcom/android/settings/wifi/WifiTrustedAPList$updateTrustedListHandler;->this$0:Lcom/android/settings/wifi/WifiTrustedAPList;

    iget-object v8, p0, Lcom/android/settings/wifi/WifiTrustedAPList$updateTrustedListHandler;->this$0:Lcom/android/settings/wifi/WifiTrustedAPList;

    invoke-static {v8}, Lcom/android/settings/wifi/WifiTrustedAPList;->access$200(Lcom/android/settings/wifi/WifiTrustedAPList;)I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-static {v7, v8}, Lcom/android/settings/wifi/WifiTrustedAPList;->access$202(Lcom/android/settings/wifi/WifiTrustedAPList;I)I

    .line 169
    iget-object v7, p0, Lcom/android/settings/wifi/WifiTrustedAPList$updateTrustedListHandler;->this$0:Lcom/android/settings/wifi/WifiTrustedAPList;

    invoke-static {v7}, Lcom/android/settings/wifi/WifiTrustedAPList;->access$300(Lcom/android/settings/wifi/WifiTrustedAPList;)Ljava/util/List;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/wifi/WifiTrustedAPList$updateTrustedListHandler;->this$0:Lcom/android/settings/wifi/WifiTrustedAPList;

    invoke-static {v8}, Lcom/android/settings/wifi/WifiTrustedAPList;->access$200(Lcom/android/settings/wifi/WifiTrustedAPList;)I

    move-result v8

    invoke-interface {v7, v8, v5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 176
    :cond_0
    :goto_1
    iget-object v7, p0, Lcom/android/settings/wifi/WifiTrustedAPList$updateTrustedListHandler;->this$0:Lcom/android/settings/wifi/WifiTrustedAPList;

    const/4 v8, 0x1

    invoke-static {v7, v8}, Lcom/android/settings/wifi/WifiTrustedAPList;->access$402(Lcom/android/settings/wifi/WifiTrustedAPList;Z)Z

    .line 177
    iget-object v7, p0, Lcom/android/settings/wifi/WifiTrustedAPList$updateTrustedListHandler;->this$0:Lcom/android/settings/wifi/WifiTrustedAPList;

    invoke-static {v7}, Lcom/android/settings/wifi/WifiTrustedAPList;->access$500(Lcom/android/settings/wifi/WifiTrustedAPList;)V

    goto :goto_0

    .line 170
    :cond_1
    const-string v7, "DOWN"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/settings/wifi/WifiTrustedAPList$updateTrustedListHandler;->this$0:Lcom/android/settings/wifi/WifiTrustedAPList;

    invoke-static {v7}, Lcom/android/settings/wifi/WifiTrustedAPList;->access$200(Lcom/android/settings/wifi/WifiTrustedAPList;)I

    move-result v7

    iget-object v8, p0, Lcom/android/settings/wifi/WifiTrustedAPList$updateTrustedListHandler;->this$0:Lcom/android/settings/wifi/WifiTrustedAPList;

    invoke-static {v8}, Lcom/android/settings/wifi/WifiTrustedAPList;->access$300(Lcom/android/settings/wifi/WifiTrustedAPList;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    if-ge v7, v8, :cond_0

    .line 171
    iget-object v7, p0, Lcom/android/settings/wifi/WifiTrustedAPList$updateTrustedListHandler;->this$0:Lcom/android/settings/wifi/WifiTrustedAPList;

    invoke-static {v7}, Lcom/android/settings/wifi/WifiTrustedAPList;->access$300(Lcom/android/settings/wifi/WifiTrustedAPList;)Ljava/util/List;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/wifi/WifiTrustedAPList$updateTrustedListHandler;->this$0:Lcom/android/settings/wifi/WifiTrustedAPList;

    invoke-static {v8}, Lcom/android/settings/wifi/WifiTrustedAPList;->access$200(Lcom/android/settings/wifi/WifiTrustedAPList;)I

    move-result v8

    iget-object v9, p0, Lcom/android/settings/wifi/WifiTrustedAPList$updateTrustedListHandler;->this$0:Lcom/android/settings/wifi/WifiTrustedAPList;

    invoke-static {v9}, Lcom/android/settings/wifi/WifiTrustedAPList;->access$300(Lcom/android/settings/wifi/WifiTrustedAPList;)Ljava/util/List;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings/wifi/WifiTrustedAPList$updateTrustedListHandler;->this$0:Lcom/android/settings/wifi/WifiTrustedAPList;

    invoke-static {v10}, Lcom/android/settings/wifi/WifiTrustedAPList;->access$200(Lcom/android/settings/wifi/WifiTrustedAPList;)I

    move-result v10

    add-int/lit8 v10, v10, 0x1

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v7, v8, v9}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 172
    iget-object v7, p0, Lcom/android/settings/wifi/WifiTrustedAPList$updateTrustedListHandler;->this$0:Lcom/android/settings/wifi/WifiTrustedAPList;

    iget-object v8, p0, Lcom/android/settings/wifi/WifiTrustedAPList$updateTrustedListHandler;->this$0:Lcom/android/settings/wifi/WifiTrustedAPList;

    invoke-static {v8}, Lcom/android/settings/wifi/WifiTrustedAPList;->access$200(Lcom/android/settings/wifi/WifiTrustedAPList;)I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    invoke-static {v7, v8}, Lcom/android/settings/wifi/WifiTrustedAPList;->access$202(Lcom/android/settings/wifi/WifiTrustedAPList;I)I

    .line 173
    iget-object v7, p0, Lcom/android/settings/wifi/WifiTrustedAPList$updateTrustedListHandler;->this$0:Lcom/android/settings/wifi/WifiTrustedAPList;

    invoke-static {v7}, Lcom/android/settings/wifi/WifiTrustedAPList;->access$300(Lcom/android/settings/wifi/WifiTrustedAPList;)Ljava/util/List;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/wifi/WifiTrustedAPList$updateTrustedListHandler;->this$0:Lcom/android/settings/wifi/WifiTrustedAPList;

    invoke-static {v8}, Lcom/android/settings/wifi/WifiTrustedAPList;->access$200(Lcom/android/settings/wifi/WifiTrustedAPList;)I

    move-result v8

    invoke-interface {v7, v8, v5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 181
    .end local v2    # "data":Landroid/os/Bundle;
    .end local v5    # "mCurAp":Lcom/android/settings/wifi/WifiTrustedAPList$TrustedAccessPoint;
    .end local v6    # "moveAction":Ljava/lang/String;
    :pswitch_1
    iget-object v7, p0, Lcom/android/settings/wifi/WifiTrustedAPList$updateTrustedListHandler;->this$0:Lcom/android/settings/wifi/WifiTrustedAPList;

    invoke-static {v7}, Lcom/android/settings/wifi/WifiTrustedAPList;->access$300(Lcom/android/settings/wifi/WifiTrustedAPList;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v3

    .line 182
    .local v3, "i":I
    iget-object v7, p0, Lcom/android/settings/wifi/WifiTrustedAPList$updateTrustedListHandler;->this$0:Lcom/android/settings/wifi/WifiTrustedAPList;

    invoke-static {v7}, Lcom/android/settings/wifi/WifiTrustedAPList;->access$300(Lcom/android/settings/wifi/WifiTrustedAPList;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wifi/WifiTrustedAPList$TrustedAccessPoint;

    .line 183
    .local v0, "ap":Lcom/android/settings/wifi/WifiTrustedAPList$TrustedAccessPoint;
    new-instance v1, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v1}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 184
    .local v1, "config":Landroid/net/wifi/WifiConfiguration;
    iget v7, v0, Lcom/android/settings/wifi/WifiTrustedAPList$TrustedAccessPoint;->networkId:I

    iput v7, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 185
    iput v3, v1, Landroid/net/wifi/WifiConfiguration;->priority:I

    .line 186
    iget-object v7, p0, Lcom/android/settings/wifi/WifiTrustedAPList$updateTrustedListHandler;->this$0:Lcom/android/settings/wifi/WifiTrustedAPList;

    invoke-static {v7}, Lcom/android/settings/wifi/WifiTrustedAPList;->access$600(Lcom/android/settings/wifi/WifiTrustedAPList;)Landroid/net/wifi/WifiManager;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v1, v8}, Landroid/net/wifi/WifiManager;->save(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    .line 187
    add-int/lit8 v3, v3, -0x1

    .line 188
    goto :goto_2

    .line 189
    .end local v0    # "ap":Lcom/android/settings/wifi/WifiTrustedAPList$TrustedAccessPoint;
    .end local v1    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_2
    iget-object v7, p0, Lcom/android/settings/wifi/WifiTrustedAPList$updateTrustedListHandler;->this$0:Lcom/android/settings/wifi/WifiTrustedAPList;

    invoke-static {v7, v9}, Lcom/android/settings/wifi/WifiTrustedAPList;->access$402(Lcom/android/settings/wifi/WifiTrustedAPList;Z)Z

    .line 190
    iget-object v7, p0, Lcom/android/settings/wifi/WifiTrustedAPList$updateTrustedListHandler;->this$0:Lcom/android/settings/wifi/WifiTrustedAPList;

    invoke-virtual {v7}, Landroid/app/Activity;->finish()V

    goto/16 :goto_0

    .line 159
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
