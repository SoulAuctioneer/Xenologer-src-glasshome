.class Lcom/google/glass/home/timeline/HomeTimelineOptionsHelper$2;
.super Ljava/lang/Object;
.source "HomeTimelineOptionsHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/home/timeline/HomeTimelineOptionsHelper;->onReply(Lcom/google/googlex/glass/common/proto/TimelineItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/home/timeline/HomeTimelineOptionsHelper;

.field final synthetic val$dialog:Lcom/google/glass/widget/MessageDialog;

.field final synthetic val$sent:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final synthetic val$timelineItem:Lcom/google/googlex/glass/common/proto/TimelineItem;


# direct methods
.method constructor <init>(Lcom/google/glass/home/timeline/HomeTimelineOptionsHelper;Lcom/google/googlex/glass/common/proto/TimelineItem;Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/google/glass/widget/MessageDialog;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 73
    iput-object p1, p0, Lcom/google/glass/home/timeline/HomeTimelineOptionsHelper$2;->this$0:Lcom/google/glass/home/timeline/HomeTimelineOptionsHelper;

    iput-object p2, p0, Lcom/google/glass/home/timeline/HomeTimelineOptionsHelper$2;->val$timelineItem:Lcom/google/googlex/glass/common/proto/TimelineItem;

    iput-object p3, p0, Lcom/google/glass/home/timeline/HomeTimelineOptionsHelper$2;->val$sent:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p4, p0, Lcom/google/glass/home/timeline/HomeTimelineOptionsHelper$2;->val$dialog:Lcom/google/glass/widget/MessageDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 76
    iget-object v0, p0, Lcom/google/glass/home/timeline/HomeTimelineOptionsHelper$2;->this$0:Lcom/google/glass/home/timeline/HomeTimelineOptionsHelper;

    #getter for: Lcom/google/glass/home/timeline/HomeTimelineOptionsHelper;->activity:Lcom/google/glass/app/GlassActivity;
    invoke-static {v0}, Lcom/google/glass/home/timeline/HomeTimelineOptionsHelper;->access$000(Lcom/google/glass/home/timeline/HomeTimelineOptionsHelper;)Lcom/google/glass/app/GlassActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/home/timeline/HomeTimelineOptionsHelper$2;->val$timelineItem:Lcom/google/googlex/glass/common/proto/TimelineItem;

    invoke-static {v0, v1}, Lcom/google/glass/home/companion/CompanionHelper;->sendTimelineItem(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineItem;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 77
    invoke-static {}, Lcom/google/glass/home/timeline/HomeTimelineOptionsHelper;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Failed to send SMS to companion"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    iget-object v0, p0, Lcom/google/glass/home/timeline/HomeTimelineOptionsHelper$2;->this$0:Lcom/google/glass/home/timeline/HomeTimelineOptionsHelper;

    #getter for: Lcom/google/glass/home/timeline/HomeTimelineOptionsHelper;->activity:Lcom/google/glass/app/GlassActivity;
    invoke-static {v0}, Lcom/google/glass/home/timeline/HomeTimelineOptionsHelper;->access$000(Lcom/google/glass/home/timeline/HomeTimelineOptionsHelper;)Lcom/google/glass/app/GlassActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/home/timeline/HomeTimelineOptionsHelper$2;->val$timelineItem:Lcom/google/googlex/glass/common/proto/TimelineItem;

    invoke-virtual {v1}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getId()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/google/googlex/glass/common/proto/TimelineItem$SyncStatus;->SYNC_FAILED:Lcom/google/googlex/glass/common/proto/TimelineItem$SyncStatus;

    invoke-static {v0, v1, v2, v3}, Lcom/google/glass/home/companion/CompanionHelper;->updateCompanionSyncStatus(Landroid/content/Context;Ljava/lang/String;Lcom/google/googlex/glass/common/proto/TimelineItem$SyncStatus;Z)V

    .line 80
    iget-object v0, p0, Lcom/google/glass/home/timeline/HomeTimelineOptionsHelper$2;->val$sent:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 87
    :goto_0
    iget-object v0, p0, Lcom/google/glass/home/timeline/HomeTimelineOptionsHelper$2;->val$dialog:Lcom/google/glass/widget/MessageDialog;

    invoke-virtual {v0}, Lcom/google/glass/widget/MessageDialog;->autoHide()V

    .line 88
    return-void

    .line 82
    :cond_0
    invoke-static {}, Lcom/google/glass/home/timeline/HomeTimelineOptionsHelper;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SMS to companion is sent"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    iget-object v0, p0, Lcom/google/glass/home/timeline/HomeTimelineOptionsHelper$2;->this$0:Lcom/google/glass/home/timeline/HomeTimelineOptionsHelper;

    #getter for: Lcom/google/glass/home/timeline/HomeTimelineOptionsHelper;->activity:Lcom/google/glass/app/GlassActivity;
    invoke-static {v0}, Lcom/google/glass/home/timeline/HomeTimelineOptionsHelper;->access$000(Lcom/google/glass/home/timeline/HomeTimelineOptionsHelper;)Lcom/google/glass/app/GlassActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/home/timeline/HomeTimelineOptionsHelper$2;->val$timelineItem:Lcom/google/googlex/glass/common/proto/TimelineItem;

    invoke-virtual {v1}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getId()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/google/googlex/glass/common/proto/TimelineItem$SyncStatus;->NOT_SYNCED:Lcom/google/googlex/glass/common/proto/TimelineItem$SyncStatus;

    invoke-static {v0, v1, v2, v3}, Lcom/google/glass/home/companion/CompanionHelper;->updateCompanionSyncStatus(Landroid/content/Context;Ljava/lang/String;Lcom/google/googlex/glass/common/proto/TimelineItem$SyncStatus;Z)V

    .line 85
    iget-object v0, p0, Lcom/google/glass/home/timeline/HomeTimelineOptionsHelper$2;->val$sent:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_0
.end method
