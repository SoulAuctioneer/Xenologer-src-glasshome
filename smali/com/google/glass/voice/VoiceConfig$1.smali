.class final Lcom/google/glass/voice/VoiceConfig$1;
.super Lcom/google/glass/voice/VoiceConfig;
.source "VoiceConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/voice/VoiceConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>(Lcom/google/glass/voice/VoiceConfig$Type;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"

    .prologue
    .line 28
    invoke-direct/range {p0 .. p6}, Lcom/google/glass/voice/VoiceConfig;-><init>(Lcom/google/glass/voice/VoiceConfig$Type;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic getHotwordRecognizer(Landroid/content/Context;)Lcom/google/glass/voice/HotwordRecognizer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    invoke-virtual {p0, p1}, Lcom/google/glass/voice/VoiceConfig$1;->getHotwordRecognizer(Landroid/content/Context;)Lcom/google/glass/voice/Sensory;

    move-result-object v0

    return-object v0
.end method

.method public getHotwordRecognizer(Landroid/content/Context;)Lcom/google/glass/voice/Sensory;
    .locals 1
    .parameter "context"

    .prologue
    .line 31
    const/4 v0, 0x0

    return-object v0
.end method
