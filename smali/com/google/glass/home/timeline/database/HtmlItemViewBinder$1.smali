.class Lcom/google/glass/home/timeline/database/HtmlItemViewBinder$1;
.super Ljava/lang/Object;
.source "HtmlItemViewBinder.java"

# interfaces
.implements Lcom/google/glass/html/HtmlRenderer$OnRenderListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/home/timeline/database/HtmlItemViewBinder;->onBind(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineItem;ZZLandroid/view/View;Lcom/google/glass/util/CachedBitmapFactory;Lcom/google/glass/widget/DynamicSizeTextView$TextClipListener;Lcom/google/glass/home/timeline/TimelineItemAdapter$ContentSizedListener;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/home/timeline/database/HtmlItemViewBinder;

.field final synthetic val$imageView:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/google/glass/home/timeline/database/HtmlItemViewBinder;Landroid/widget/ImageView;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 48
    iput-object p1, p0, Lcom/google/glass/home/timeline/database/HtmlItemViewBinder$1;->this$0:Lcom/google/glass/home/timeline/database/HtmlItemViewBinder;

    iput-object p2, p0, Lcom/google/glass/home/timeline/database/HtmlItemViewBinder$1;->val$imageView:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRender(Lcom/google/glass/html/HtmlRenderer;)V
    .locals 1
    .parameter "renderer"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/google/glass/home/timeline/database/HtmlItemViewBinder$1;->val$imageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->invalidate()V

    .line 53
    return-void
.end method
