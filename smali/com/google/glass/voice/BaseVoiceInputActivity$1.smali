.class Lcom/google/glass/voice/BaseVoiceInputActivity$1;
.super Landroid/os/Handler;
.source "BaseVoiceInputActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/voice/BaseVoiceInputActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/voice/BaseVoiceInputActivity;


# direct methods
.method constructor <init>(Lcom/google/glass/voice/BaseVoiceInputActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 199
    iput-object p1, p0, Lcom/google/glass/voice/BaseVoiceInputActivity$1;->this$0:Lcom/google/glass/voice/BaseVoiceInputActivity;

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

    .line 204
    iget-object v1, p0, Lcom/google/glass/voice/BaseVoiceInputActivity$1;->this$0:Lcom/google/glass/voice/BaseVoiceInputActivity;

    invoke-virtual {v1}, Lcom/google/glass/voice/BaseVoiceInputActivity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 258
    :goto_0
    return-void

    .line 208
    :cond_0
    iget-object v1, p0, Lcom/google/glass/voice/BaseVoiceInputActivity$1;->this$0:Lcom/google/glass/voice/BaseVoiceInputActivity;

    iget v2, p1, Landroid/os/Message;->what:I

    #calls: Lcom/google/glass/voice/BaseVoiceInputActivity;->updatePowerHelper(I)V
    invoke-static {v1, v2}, Lcom/google/glass/voice/BaseVoiceInputActivity;->access$000(Lcom/google/glass/voice/BaseVoiceInputActivity;I)V

    .line 209
    iget-object v1, p0, Lcom/google/glass/voice/BaseVoiceInputActivity$1;->this$0:Lcom/google/glass/voice/BaseVoiceInputActivity;

    iget v2, p1, Landroid/os/Message;->what:I

    #calls: Lcom/google/glass/voice/BaseVoiceInputActivity;->updateKeepScreenOn(I)V
    invoke-static {v1, v2}, Lcom/google/glass/voice/BaseVoiceInputActivity;->access$100(Lcom/google/glass/voice/BaseVoiceInputActivity;I)V

    .line 212
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 215
    :pswitch_0
    iget-object v1, p0, Lcom/google/glass/voice/BaseVoiceInputActivity$1;->this$0:Lcom/google/glass/voice/BaseVoiceInputActivity;

    #calls: Lcom/google/glass/voice/BaseVoiceInputActivity;->dispatchShowListening()V
    invoke-static {v1}, Lcom/google/glass/voice/BaseVoiceInputActivity;->access$200(Lcom/google/glass/voice/BaseVoiceInputActivity;)V

    goto :goto_0

    .line 218
    :pswitch_1
    iget-object v1, p0, Lcom/google/glass/voice/BaseVoiceInputActivity$1;->this$0:Lcom/google/glass/voice/BaseVoiceInputActivity;

    #calls: Lcom/google/glass/voice/BaseVoiceInputActivity;->dispatchShowRecording()V
    invoke-static {v1}, Lcom/google/glass/voice/BaseVoiceInputActivity;->access$300(Lcom/google/glass/voice/BaseVoiceInputActivity;)V

    goto :goto_0

    .line 221
    :pswitch_2
    iget-object v1, p0, Lcom/google/glass/voice/BaseVoiceInputActivity$1;->this$0:Lcom/google/glass/voice/BaseVoiceInputActivity;

    #calls: Lcom/google/glass/voice/BaseVoiceInputActivity;->dispatchShowRecognizing()V
    invoke-static {v1}, Lcom/google/glass/voice/BaseVoiceInputActivity;->access$400(Lcom/google/glass/voice/BaseVoiceInputActivity;)V

    goto :goto_0

    .line 224
    :pswitch_3
    iget-object v1, p0, Lcom/google/glass/voice/BaseVoiceInputActivity$1;->this$0:Lcom/google/glass/voice/BaseVoiceInputActivity;

    invoke-virtual {v1}, Lcom/google/glass/voice/BaseVoiceInputActivity;->dispatchShowNoSpeechDetected()V

    goto :goto_0

    .line 227
    :pswitch_4
    iget-object v1, p0, Lcom/google/glass/voice/BaseVoiceInputActivity$1;->this$0:Lcom/google/glass/voice/BaseVoiceInputActivity;

    #calls: Lcom/google/glass/voice/BaseVoiceInputActivity;->dispatchShowDone()V
    invoke-static {v1}, Lcom/google/glass/voice/BaseVoiceInputActivity;->access$500(Lcom/google/glass/voice/BaseVoiceInputActivity;)V

    goto :goto_0

    .line 230
    :pswitch_5
    iget-object v2, p0, Lcom/google/glass/voice/BaseVoiceInputActivity$1;->this$0:Lcom/google/glass/voice/BaseVoiceInputActivity;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/google/glass/voice/network/ISpeechLevelSource;

    #calls: Lcom/google/glass/voice/BaseVoiceInputActivity;->dispatchSetSpeechLevelSource(Lcom/google/glass/voice/network/ISpeechLevelSource;)V
    invoke-static {v2, v1}, Lcom/google/glass/voice/BaseVoiceInputActivity;->access$600(Lcom/google/glass/voice/BaseVoiceInputActivity;Lcom/google/glass/voice/network/ISpeechLevelSource;)V

    goto :goto_0

    .line 233
    :pswitch_6
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    move-object v0, v1

    check-cast v0, [Ljava/lang/Object;

    .line 234
    .local v0, args:[Ljava/lang/Object;
    iget-object v3, p0, Lcom/google/glass/voice/BaseVoiceInputActivity$1;->this$0:Lcom/google/glass/voice/BaseVoiceInputActivity;

    aget-object v1, v0, v4

    check-cast v1, Ljava/lang/CharSequence;

    aget-object v2, v0, v5

    check-cast v2, Ljava/lang/CharSequence;

    #calls: Lcom/google/glass/voice/BaseVoiceInputActivity;->dispatchUpdateRecognizedText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    invoke-static {v3, v1, v2}, Lcom/google/glass/voice/BaseVoiceInputActivity;->access$700(Lcom/google/glass/voice/BaseVoiceInputActivity;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 237
    .end local v0           #args:[Ljava/lang/Object;
    :pswitch_7
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    move-object v0, v1

    check-cast v0, [Ljava/lang/Object;

    .line 238
    .restart local v0       #args:[Ljava/lang/Object;
    iget-object v3, p0, Lcom/google/glass/voice/BaseVoiceInputActivity$1;->this$0:Lcom/google/glass/voice/BaseVoiceInputActivity;

    aget-object v1, v0, v4

    check-cast v1, Ljava/lang/CharSequence;

    aget-object v2, v0, v5

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    #calls: Lcom/google/glass/voice/BaseVoiceInputActivity;->dispatchOnRecognitionResult(Ljava/lang/CharSequence;F)V
    invoke-static {v3, v1, v2}, Lcom/google/glass/voice/BaseVoiceInputActivity;->access$800(Lcom/google/glass/voice/BaseVoiceInputActivity;Ljava/lang/CharSequence;F)V

    goto :goto_0

    .line 241
    .end local v0           #args:[Ljava/lang/Object;
    :pswitch_8
    iget-object v2, p0, Lcom/google/glass/voice/BaseVoiceInputActivity$1;->this$0:Lcom/google/glass/voice/BaseVoiceInputActivity;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/google/majel/proto/MajelProtos$MajelResponse;

    #calls: Lcom/google/glass/voice/BaseVoiceInputActivity;->dispatchOnMajelResult(Lcom/google/majel/proto/MajelProtos$MajelResponse;)V
    invoke-static {v2, v1}, Lcom/google/glass/voice/BaseVoiceInputActivity;->access$900(Lcom/google/glass/voice/BaseVoiceInputActivity;Lcom/google/majel/proto/MajelProtos$MajelResponse;)V

    goto :goto_0

    .line 244
    :pswitch_9
    iget-object v2, p0, Lcom/google/glass/voice/BaseVoiceInputActivity$1;->this$0:Lcom/google/glass/voice/BaseVoiceInputActivity;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    #calls: Lcom/google/glass/voice/BaseVoiceInputActivity;->dispatchOnHtmlAnswerCardResult(Ljava/lang/String;)V
    invoke-static {v2, v1}, Lcom/google/glass/voice/BaseVoiceInputActivity;->access$1000(Lcom/google/glass/voice/BaseVoiceInputActivity;Ljava/lang/String;)V

    goto :goto_0

    .line 247
    :pswitch_a
    iget-object v2, p0, Lcom/google/glass/voice/BaseVoiceInputActivity$1;->this$0:Lcom/google/glass/voice/BaseVoiceInputActivity;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/google/audio/ears/proto/EarsService$EarsResultsResponse;

    #calls: Lcom/google/glass/voice/BaseVoiceInputActivity;->dispatchOnSoundSearchResult(Lcom/google/audio/ears/proto/EarsService$EarsResultsResponse;)V
    invoke-static {v2, v1}, Lcom/google/glass/voice/BaseVoiceInputActivity;->access$1100(Lcom/google/glass/voice/BaseVoiceInputActivity;Lcom/google/audio/ears/proto/EarsService$EarsResultsResponse;)V

    goto/16 :goto_0

    .line 250
    :pswitch_b
    iget-object v2, p0, Lcom/google/glass/voice/BaseVoiceInputActivity$1;->this$0:Lcom/google/glass/voice/BaseVoiceInputActivity;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/google/glass/voice/network/SpeechException;

    #calls: Lcom/google/glass/voice/BaseVoiceInputActivity;->dispatchOnError(Lcom/google/glass/voice/network/SpeechException;)V
    invoke-static {v2, v1}, Lcom/google/glass/voice/BaseVoiceInputActivity;->access$1200(Lcom/google/glass/voice/BaseVoiceInputActivity;Lcom/google/glass/voice/network/SpeechException;)V

    goto/16 :goto_0

    .line 255
    :pswitch_c
    iget-object v1, p0, Lcom/google/glass/voice/BaseVoiceInputActivity$1;->this$0:Lcom/google/glass/voice/BaseVoiceInputActivity;

    #getter for: Lcom/google/glass/voice/BaseVoiceInputActivity;->progressSlider:Lcom/google/glass/widget/SliderView;
    invoke-static {v1}, Lcom/google/glass/voice/BaseVoiceInputActivity;->access$1300(Lcom/google/glass/voice/BaseVoiceInputActivity;)Lcom/google/glass/widget/SliderView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/glass/widget/SliderView;->startIndeterminate()V

    goto/16 :goto_0

    .line 212
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
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_9
    .end packed-switch
.end method
