.class Lcom/android/settings/VoiceBroadcastSettings$1;
.super Ljava/lang/Object;
.source "VoiceBroadcastSettings.java"

# interfaces
.implements Landroid/speech/tts/TextToSpeech$OnInitListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/VoiceBroadcastSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/VoiceBroadcastSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/VoiceBroadcastSettings;)V
    .locals 0

    .prologue
    .line 215
    iput-object p1, p0, Lcom/android/settings/VoiceBroadcastSettings$1;->this$0:Lcom/android/settings/VoiceBroadcastSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInit(I)V
    .locals 3
    .param p1, "status"    # I

    .prologue
    .line 220
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/VoiceBroadcastSettings$1;->this$0:Lcom/android/settings/VoiceBroadcastSettings;

    invoke-virtual {v1, p1}, Lcom/android/settings/VoiceBroadcastSettings;->onInitEngine(I)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 226
    :goto_0
    return-void

    .line 221
    :catch_0
    move-exception v0

    .line 222
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v1, "VoiceBroadcastSettings"

    const-string v2, "onInit(): TextToSpeech throws an IllegalArgumentException!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method
