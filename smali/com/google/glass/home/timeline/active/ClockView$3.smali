.class Lcom/google/glass/home/timeline/active/ClockView$3;
.super Ljava/lang/Object;
.source "ClockView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/home/timeline/active/ClockView;->onUnload()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/home/timeline/active/ClockView;


# direct methods
.method constructor <init>(Lcom/google/glass/home/timeline/active/ClockView;)V
    .locals 0
    .parameter

    .prologue
    .line 70
    iput-object p1, p0, Lcom/google/glass/home/timeline/active/ClockView$3;->this$0:Lcom/google/glass/home/timeline/active/ClockView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 73
    iget-object v0, p0, Lcom/google/glass/home/timeline/active/ClockView$3;->this$0:Lcom/google/glass/home/timeline/active/ClockView;

    #getter for: Lcom/google/glass/home/timeline/active/ClockView;->timeReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;
    invoke-static {v0}, Lcom/google/glass/home/timeline/active/ClockView;->access$200(Lcom/google/glass/home/timeline/active/ClockView;)Lcom/google/glass/util/SafeBroadcastReceiver;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/home/timeline/active/ClockView$3;->this$0:Lcom/google/glass/home/timeline/active/ClockView;

    invoke-virtual {v1}, Lcom/google/glass/home/timeline/active/ClockView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/glass/util/SafeBroadcastReceiver;->unregister(Landroid/content/Context;)V

    .line 74
    return-void
.end method
