.class public final Lcom/google/glass/home/BugReportReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BugReportReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v3, 0x1

    .line 23
    invoke-static {}, Lcom/google/glass/util/BuildHelper;->isUser()Z

    move-result v0

    if-nez v0, :cond_0

    .line 24
    sget v0, Lcom/google/glass/common/R$string;->bugreport_title_manual:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/google/glass/util/Feedback$RecoveryAction;->SHOULD_CONTINUE:Lcom/google/glass/util/Feedback$RecoveryAction;

    const/4 v5, 0x0

    move-object v0, p1

    move v4, v3

    invoke-static/range {v0 .. v5}, Lcom/google/glass/util/Feedback;->show(Landroid/content/Context;Ljava/lang/String;Lcom/google/glass/util/Feedback$RecoveryAction;ZZ[Ljava/lang/String;)V

    .line 31
    invoke-virtual {p0}, Lcom/google/glass/home/BugReportReceiver;->abortBroadcast()V

    .line 33
    :cond_0
    return-void
.end method
