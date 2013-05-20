.class public Lcom/google/glass/home/timeline/VideoItemView;
.super Landroid/widget/FrameLayout;
.source "VideoItemView.java"

# interfaces
.implements Lcom/google/glass/horizontalscroll/HorizontalScrollItem;


# static fields
.field private static final START_DELAY_MS:J

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private bitmapFactory:Lcom/google/glass/util/CachedBitmapFactory;

.field private final playVideoRunnable:Ljava/lang/Runnable;

.field private videoAttachment:Lcom/google/googlex/glass/common/proto/Attachment;

.field private videoPlayer:Lcom/google/glass/home/timeline/VideoPlayer;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 27
    const-class v0, Lcom/google/glass/home/timeline/VideoItemView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/home/timeline/VideoItemView;->TAG:Ljava/lang/String;

    .line 30
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/glass/home/timeline/VideoItemView;->START_DELAY_MS:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 53
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 42
    new-instance v0, Lcom/google/glass/home/timeline/VideoItemView$1;

    invoke-direct {v0, p0}, Lcom/google/glass/home/timeline/VideoItemView$1;-><init>(Lcom/google/glass/home/timeline/VideoItemView;)V

    iput-object v0, p0, Lcom/google/glass/home/timeline/VideoItemView;->playVideoRunnable:Ljava/lang/Runnable;

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    new-instance v0, Lcom/google/glass/home/timeline/VideoItemView$1;

    invoke-direct {v0, p0}, Lcom/google/glass/home/timeline/VideoItemView$1;-><init>(Lcom/google/glass/home/timeline/VideoItemView;)V

    iput-object v0, p0, Lcom/google/glass/home/timeline/VideoItemView;->playVideoRunnable:Ljava/lang/Runnable;

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 61
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 42
    new-instance v0, Lcom/google/glass/home/timeline/VideoItemView$1;

    invoke-direct {v0, p0}, Lcom/google/glass/home/timeline/VideoItemView$1;-><init>(Lcom/google/glass/home/timeline/VideoItemView;)V

    iput-object v0, p0, Lcom/google/glass/home/timeline/VideoItemView;->playVideoRunnable:Ljava/lang/Runnable;

    .line 62
    return-void
.end method

.method static synthetic access$000(Lcom/google/glass/home/timeline/VideoItemView;)Lcom/google/glass/home/timeline/VideoPlayer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/google/glass/home/timeline/VideoItemView;->videoPlayer:Lcom/google/glass/home/timeline/VideoPlayer;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/glass/home/timeline/VideoItemView;)Lcom/google/googlex/glass/common/proto/Attachment;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/google/glass/home/timeline/VideoItemView;->videoAttachment:Lcom/google/googlex/glass/common/proto/Attachment;

    return-object v0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/google/glass/home/timeline/VideoItemView;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private createVideoPlayer(Landroid/view/TextureView;Landroid/widget/FrameLayout;Lcom/google/glass/util/CachedBitmapFactory;Lcom/google/googlex/glass/common/proto/Attachment;)Lcom/google/glass/home/timeline/VideoPlayer;
    .locals 2
    .parameter "videoView"
    .parameter "nonVideoView"
    .parameter "bitmapFactory"
    .parameter "videoAttachment"

    .prologue
    .line 178
    new-instance v0, Lcom/google/glass/home/timeline/VideoPlayer;

    new-instance v1, Lcom/google/glass/home/timeline/VideoItemView$2;

    invoke-direct {v1, p0, p2, p1}, Lcom/google/glass/home/timeline/VideoItemView$2;-><init>(Lcom/google/glass/home/timeline/VideoItemView;Landroid/widget/FrameLayout;Landroid/view/TextureView;)V

    invoke-direct {v0, p1, p3, v1, p4}, Lcom/google/glass/home/timeline/VideoPlayer;-><init>(Landroid/view/TextureView;Lcom/google/glass/util/CachedBitmapFactory;Lcom/google/glass/home/timeline/VideoPlayerListener;Lcom/google/googlex/glass/common/proto/Attachment;)V

    return-object v0
.end method

.method private startVideo()V
    .locals 5

    .prologue
    .line 141
    iget-object v2, p0, Lcom/google/glass/home/timeline/VideoItemView;->videoPlayer:Lcom/google/glass/home/timeline/VideoPlayer;

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/google/glass/home/timeline/VideoItemView;->videoAttachment:Lcom/google/googlex/glass/common/proto/Attachment;

    if-eqz v2, :cond_0

    .line 142
    sget v2, Lcom/google/glass/home/R$id;->video:I

    invoke-virtual {p0, v2}, Lcom/google/glass/home/timeline/VideoItemView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/TextureView;

    .line 143
    .local v1, videoView:Landroid/view/TextureView;
    sget v2, Lcom/google/glass/home/R$id;->non_video:I

    invoke-virtual {p0, v2}, Lcom/google/glass/home/timeline/VideoItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 144
    .local v0, nonVideoView:Landroid/widget/FrameLayout;
    iget-object v2, p0, Lcom/google/glass/home/timeline/VideoItemView;->bitmapFactory:Lcom/google/glass/util/CachedBitmapFactory;

    iget-object v3, p0, Lcom/google/glass/home/timeline/VideoItemView;->videoAttachment:Lcom/google/googlex/glass/common/proto/Attachment;

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/google/glass/home/timeline/VideoItemView;->createVideoPlayer(Landroid/view/TextureView;Landroid/widget/FrameLayout;Lcom/google/glass/util/CachedBitmapFactory;Lcom/google/googlex/glass/common/proto/Attachment;)Lcom/google/glass/home/timeline/VideoPlayer;

    move-result-object v2

    iput-object v2, p0, Lcom/google/glass/home/timeline/VideoItemView;->videoPlayer:Lcom/google/glass/home/timeline/VideoPlayer;

    .line 145
    iget-object v2, p0, Lcom/google/glass/home/timeline/VideoItemView;->playVideoRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v2}, Lcom/google/glass/home/timeline/VideoItemView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 146
    iget-object v2, p0, Lcom/google/glass/home/timeline/VideoItemView;->playVideoRunnable:Ljava/lang/Runnable;

    sget-wide v3, Lcom/google/glass/home/timeline/VideoItemView;->START_DELAY_MS:J

    invoke-virtual {p0, v2, v3, v4}, Lcom/google/glass/home/timeline/VideoItemView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 149
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/TextureView;->setKeepScreenOn(Z)V

    .line 151
    .end local v0           #nonVideoView:Landroid/widget/FrameLayout;
    .end local v1           #videoView:Landroid/view/TextureView;
    :cond_0
    return-void
.end method

.method private stopVideo()V
    .locals 2

    .prologue
    .line 157
    iget-object v1, p0, Lcom/google/glass/home/timeline/VideoItemView;->playVideoRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Lcom/google/glass/home/timeline/VideoItemView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 158
    iget-object v1, p0, Lcom/google/glass/home/timeline/VideoItemView;->videoPlayer:Lcom/google/glass/home/timeline/VideoPlayer;

    if-eqz v1, :cond_0

    .line 159
    iget-object v1, p0, Lcom/google/glass/home/timeline/VideoItemView;->videoPlayer:Lcom/google/glass/home/timeline/VideoPlayer;

    invoke-virtual {v1}, Lcom/google/glass/home/timeline/VideoPlayer;->stop()V

    .line 160
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/glass/home/timeline/VideoItemView;->videoPlayer:Lcom/google/glass/home/timeline/VideoPlayer;

    .line 163
    sget v1, Lcom/google/glass/home/R$id;->video:I

    invoke-virtual {p0, v1}, Lcom/google/glass/home/timeline/VideoItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/TextureView;

    .line 164
    .local v0, videoView:Landroid/view/TextureView;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setKeepScreenOn(Z)V

    .line 166
    .end local v0           #videoView:Landroid/view/TextureView;
    :cond_0
    return-void
.end method


# virtual methods
.method public getBundleId()Lcom/google/glass/timeline/TimelineItemId;
    .locals 1

    .prologue
    .line 134
    const/4 v0, 0x0

    return-object v0
.end method

.method public onConfirm(Lcom/google/glass/app/GlassActivity;)Z
    .locals 1
    .parameter "activity"

    .prologue
    .line 109
    const/4 v0, 0x0

    return v0
.end method

.method public onDoubleTap(Lcom/google/glass/app/GlassActivity;)Z
    .locals 1
    .parameter "activity"

    .prologue
    .line 114
    const/4 v0, 0x0

    return v0
.end method

.method public onFocus()V
    .locals 0

    .prologue
    .line 85
    return-void
.end method

.method public onLoad()V
    .locals 0

    .prologue
    .line 77
    return-void
.end method

.method public onOptionsItemSelected(Lcom/google/glass/widget/OptionMenu$Item;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 129
    const/4 v0, 0x0

    return v0
.end method

.method public onPrepareOptionsMenu(Lcom/google/glass/widget/OptionMenu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 124
    const/4 v0, 0x0

    return v0
.end method

.method public onSettled()V
    .locals 1

    .prologue
    .line 95
    invoke-virtual {p0}, Lcom/google/glass/home/timeline/VideoItemView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    invoke-direct {p0}, Lcom/google/glass/home/timeline/VideoItemView;->startVideo()V

    .line 98
    :cond_0
    return-void
.end method

.method public onUnfocus()V
    .locals 0

    .prologue
    .line 89
    return-void
.end method

.method public onUnload()V
    .locals 0

    .prologue
    .line 81
    return-void
.end method

.method public onUnsettled()V
    .locals 0

    .prologue
    .line 104
    invoke-direct {p0}, Lcom/google/glass/home/timeline/VideoItemView;->stopVideo()V

    .line 105
    return-void
.end method

.method public setVideoAttachment(Lcom/google/googlex/glass/common/proto/Attachment;Lcom/google/glass/util/CachedBitmapFactory;)V
    .locals 0
    .parameter "videoAttachment"
    .parameter "bitmapFactory"

    .prologue
    .line 71
    iput-object p1, p0, Lcom/google/glass/home/timeline/VideoItemView;->videoAttachment:Lcom/google/googlex/glass/common/proto/Attachment;

    .line 72
    iput-object p2, p0, Lcom/google/glass/home/timeline/VideoItemView;->bitmapFactory:Lcom/google/glass/util/CachedBitmapFactory;

    .line 73
    return-void
.end method

.method public shouldSuppressSingleTapSound()Z
    .locals 1

    .prologue
    .line 119
    const/4 v0, 0x0

    return v0
.end method
