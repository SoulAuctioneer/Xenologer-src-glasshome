.class Lcom/google/glass/home/voice/BaseVoiceInputActivity$1;
.super Landroid/os/Handler;
.source "BaseVoiceInputActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/home/voice/BaseVoiceInputActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/home/voice/BaseVoiceInputActivity;


# direct methods
.method constructor <init>(Lcom/google/glass/home/voice/BaseVoiceInputActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 178
    iput-object p1, p0, Lcom/google/glass/home/voice/BaseVoiceInputActivity$1;->this$0:Lcom/google/glass/home/voice/BaseVoiceInputActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 183
    iget-object v1, p0, Lcom/google/glass/home/voice/BaseVoiceInputActivity$1;->this$0:Lcom/google/glass/home/voice/BaseVoiceInputActivity;

    invoke-virtual {v1}, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 231
    :goto_0
    return-void

    .line 187
    :cond_0
    iget-object v1, p0, Lcom/google/glass/home/voice/BaseVoiceInputActivity$1;->this$0:Lcom/google/glass/home/voice/BaseVoiceInputActivity;

    iget v2, p1, Landroid/os/Message;->what:I

    #calls: Lcom/google/glass/home/voice/BaseVoiceInputActivity;->updatePowerHelper(I)V
    invoke-static {v1, v2}, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->access$000(Lcom/google/glass/home/voice/BaseVoiceInputActivity;I)V

    .line 188
    iget-object v1, p0, Lcom/google/glass/home/voice/BaseVoiceInputActivity$1;->this$0:Lcom/google/glass/home/voice/BaseVoiceInputActivity;

    iget v2, p1, Landroid/os/Message;->what:I

    #calls: Lcom/google/glass/home/voice/BaseVoiceInputActivity;->updateKeepScreenOn(I)V
    invoke-static {v1, v2}, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->access$100(Lcom/google/glass/home/voice/BaseVoiceInputActivity;I)V

    .line 191
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 194
    :pswitch_0
    iget-object v1, p0, Lcom/google/glass/home/voice/BaseVoiceInputActivity$1;->this$0:Lcom/google/glass/home/voice/BaseVoiceInputActivity;

    #calls: Lcom/google/glass/home/voice/BaseVoiceInputActivity;->dispatchShowListening()V
    invoke-static {v1}, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->access$200(Lcom/google/glass/home/voice/BaseVoiceInputActivity;)V

    goto :goto_0

    .line 197
    :pswitch_1
    iget-object v1, p0, Lcom/google/glass/home/voice/BaseVoiceInputActivity$1;->this$0:Lcom/google/glass/home/voice/BaseVoiceInputActivity;

    #calls: Lcom/google/glass/home/voice/BaseVoiceInputActivity;->dispatchShowRecording()V
    invoke-static {v1}, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->access$300(Lcom/google/glass/home/voice/BaseVoiceInputActivity;)V

    goto :goto_0

    .line 200
    :pswitch_2
    iget-object v1, p0, Lcom/google/glass/home/voice/BaseVoiceInputActivity$1;->this$0:Lcom/google/glass/home/voice/BaseVoiceInputActivity;

    #calls: Lcom/google/glass/home/voice/BaseVoiceInputActivity;->dispatchShowRecognizing()V
    invoke-static {v1}, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->access$400(Lcom/google/glass/home/voice/BaseVoiceInputActivity;)V

    goto :goto_0

    .line 203
    :pswitch_3
    iget-object v1, p0, Lcom/google/glass/home/voice/BaseVoiceInputActivity$1;->this$0:Lcom/google/glass/home/voice/BaseVoiceInputActivity;

    #calls: Lcom/google/glass/home/voice/BaseVoiceInputActivity;->dispatchShowNoSpeechDetected()V
    invoke-static {v1}, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->access$500(Lcom/google/glass/home/voice/BaseVoiceInputActivity;)V

    goto :goto_0

    .line 206
    :pswitch_4
    iget-object v1, p0, Lcom/google/glass/home/voice/BaseVoiceInputActivity$1;->this$0:Lcom/google/glass/home/voice/BaseVoiceInputActivity;

    #calls: Lcom/google/glass/home/voice/BaseVoiceInputActivity;->dispatchShowDone()V
    invoke-static {v1}, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->access$600(Lcom/google/glass/home/voice/BaseVoiceInputActivity;)V

    goto :goto_0

    .line 209
    :pswitch_5
    iget-object v2, p0, Lcom/google/glass/home/voice/BaseVoiceInputActivity$1;->this$0:Lcom/google/glass/home/voice/BaseVoiceInputActivity;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/google/glass/voice/network/VoiceSearchUi$SpeechLevelSource;

    #calls: Lcom/google/glass/home/voice/BaseVoiceInputActivity;->dispatchSetSpeechLevelSource(Lcom/google/glass/voice/network/VoiceSearchUi$SpeechLevelSource;)V
    invoke-static {v2, v1}, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->access$700(Lcom/google/glass/home/voice/BaseVoiceInputActivity;Lcom/google/glass/voice/network/VoiceSearchUi$SpeechLevelSource;)V

    goto :goto_0

    .line 212
    :pswitch_6
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    move-object v0, v1

    check-cast v0, [Ljava/lang/Object;

    .line 213
    .local v0, args:[Ljava/lang/Object;
    iget-object v3, p0, Lcom/google/glass/home/voice/BaseVoiceInputActivity$1;->this$0:Lcom/google/glass/home/voice/BaseVoiceInputActivity;

    aget-object v1, v0, v4

    check-cast v1, Ljava/lang/CharSequence;

    aget-object v2, v0, v5

    check-cast v2, Ljava/lang/CharSequence;

    #calls: Lcom/google/glass/home/voice/BaseVoiceInputActivity;->dispatchUpdateRecognizedText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    invoke-static {v3, v1, v2}, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->access$800(Lcom/google/glass/home/voice/BaseVoiceInputActivity;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 216
    .end local v0           #args:[Ljava/lang/Object;
    :pswitch_7
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    move-object v0, v1

    check-cast v0, [Ljava/lang/Object;

    .line 217
    .restart local v0       #args:[Ljava/lang/Object;
    iget-object v3, p0, Lcom/google/glass/home/voice/BaseVoiceInputActivity$1;->this$0:Lcom/google/glass/home/voice/BaseVoiceInputActivity;

    aget-object v1, v0, v4

    check-cast v1, Lcom/google/android/speech/alternates/CorrectableString;

    aget-object v2, v0, v5

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    #calls: Lcom/google/glass/home/voice/BaseVoiceInputActivity;->dispatchOnRecognitionResult(Lcom/google/android/speech/alternates/CorrectableString;F)V
    invoke-static {v3, v1, v2}, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->access$900(Lcom/google/glass/home/voice/BaseVoiceInputActivity;Lcom/google/android/speech/alternates/CorrectableString;F)V

    goto :goto_0

    .line 220
    .end local v0           #args:[Ljava/lang/Object;
    :pswitch_8
    iget-object v2, p0, Lcom/google/glass/home/voice/BaseVoiceInputActivity$1;->this$0:Lcom/google/glass/home/voice/BaseVoiceInputActivity;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/google/majel/proto/MajelProtos$MajelResponse;

    #calls: Lcom/google/glass/home/voice/BaseVoiceInputActivity;->dispatchOnMajelResult(Lcom/google/majel/proto/MajelProtos$MajelResponse;)V
    invoke-static {v2, v1}, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->access$1000(Lcom/google/glass/home/voice/BaseVoiceInputActivity;Lcom/google/majel/proto/MajelProtos$MajelResponse;)V

    goto :goto_0

    .line 223
    :pswitch_9
    iget-object v2, p0, Lcom/google/glass/home/voice/BaseVoiceInputActivity$1;->this$0:Lcom/google/glass/home/voice/BaseVoiceInputActivity;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/google/glass/voice/network/VoiceSearchUi$SpeechException;

    #calls: Lcom/google/glass/home/voice/BaseVoiceInputActivity;->dispatchOnError(Lcom/google/glass/voice/network/VoiceSearchUi$SpeechException;)V
    invoke-static {v2, v1}, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->access$1100(Lcom/google/glass/home/voice/BaseVoiceInputActivity;Lcom/google/glass/voice/network/VoiceSearchUi$SpeechException;)V

    goto :goto_0

    .line 228
    :pswitch_a
    iget-object v1, p0, Lcom/google/glass/home/voice/BaseVoiceInputActivity$1;->this$0:Lcom/google/glass/home/voice/BaseVoiceInputActivity;

    #getter for: Lcom/google/glass/home/voice/BaseVoiceInputActivity;->progressSlider:Lcom/google/glass/widget/SliderView;
    invoke-static {v1}, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->access$1200(Lcom/google/glass/home/voice/BaseVoiceInputActivity;)Lcom/google/glass/widget/SliderView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/glass/widget/SliderView;->startIndeterminate()V

    goto/16 :goto_0

    .line 191
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method
