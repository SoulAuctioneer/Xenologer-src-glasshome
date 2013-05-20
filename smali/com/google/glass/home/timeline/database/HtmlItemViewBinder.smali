.class public Lcom/google/glass/home/timeline/database/HtmlItemViewBinder;
.super Lcom/google/glass/home/timeline/database/BaseItemViewBinder;
.source "HtmlItemViewBinder.java"


# instance fields
.field private renderer:Lcom/google/glass/home/timeline/html/HtmlRenderer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/google/glass/home/timeline/database/BaseItemViewBinder;-><init>()V

    return-void
.end method

.method private getFooterRightMargin(Landroid/content/Context;)I
    .locals 3
    .parameter "context"

    .prologue
    .line 61
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 62
    .local v0, res:Landroid/content/res/Resources;
    invoke-virtual {p0}, Lcom/google/glass/home/timeline/database/HtmlItemViewBinder;->getTimestampWidth()I

    move-result v1

    sget v2, Lcom/google/glass/home/R$dimen;->glassware_icon_size:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    add-int/2addr v1, v2

    sget v2, Lcom/google/glass/home/R$dimen;->glassware_icon_left_margin:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    add-int/2addr v1, v2

    sget v2, Lcom/google/glass/home/R$dimen;->generic_card_padding:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    add-int/2addr v1, v2

    return v1
.end method

.method private releaseRenderer()V
    .locals 1

    .prologue
    .line 79
    invoke-static {}, Lcom/google/glass/util/Assert;->assertUiThread()V

    .line 80
    iget-object v0, p0, Lcom/google/glass/home/timeline/database/HtmlItemViewBinder;->renderer:Lcom/google/glass/home/timeline/html/HtmlRenderer;

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/google/glass/home/timeline/database/HtmlItemViewBinder;->renderer:Lcom/google/glass/home/timeline/html/HtmlRenderer;

    invoke-virtual {v0}, Lcom/google/glass/home/timeline/html/HtmlRenderer;->release()V

    .line 82
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/home/timeline/database/HtmlItemViewBinder;->renderer:Lcom/google/glass/home/timeline/html/HtmlRenderer;

    .line 84
    :cond_0
    return-void
.end method


# virtual methods
.method public getLayout()I
    .locals 1

    .prologue
    .line 27
    sget v0, Lcom/google/glass/home/R$layout;->timeline_item_html:I

    return v0
.end method

.method protected onBind(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineItem;ZZLandroid/view/View;Lcom/google/glass/util/CachedBitmapFactory;Lcom/google/glass/widget/DynamicSizeTextView$TextClipListener;)Z
    .locals 4
    .parameter "context"
    .parameter "item"
    .parameter "inBundle"
    .parameter "isReadMore"
    .parameter "view"
    .parameter "bitmapFactory"
    .parameter "textClipListener"

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/google/glass/home/timeline/database/HtmlItemViewBinder;->releaseRenderer()V

    .line 37
    sget v1, Lcom/google/glass/home/R$id;->rendered_html:I

    invoke-virtual {p5, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 38
    .local v0, imageView:Landroid/widget/ImageView;
    invoke-static {}, Lcom/google/glass/home/timeline/html/HtmlRenderer;->obtain()Lcom/google/glass/home/timeline/html/HtmlRenderer;

    move-result-object v1

    iput-object v1, p0, Lcom/google/glass/home/timeline/database/HtmlItemViewBinder;->renderer:Lcom/google/glass/home/timeline/html/HtmlRenderer;

    .line 39
    iget-object v1, p0, Lcom/google/glass/home/timeline/database/HtmlItemViewBinder;->renderer:Lcom/google/glass/home/timeline/html/HtmlRenderer;

    invoke-direct {p0, p1}, Lcom/google/glass/home/timeline/database/HtmlItemViewBinder;->getFooterRightMargin(Landroid/content/Context;)I

    move-result v2

    new-instance v3, Lcom/google/glass/home/timeline/database/HtmlItemViewBinder$1;

    invoke-direct {v3, p0, v0}, Lcom/google/glass/home/timeline/database/HtmlItemViewBinder$1;-><init>(Lcom/google/glass/home/timeline/database/HtmlItemViewBinder;Landroid/widget/ImageView;)V

    invoke-virtual {v1, p2, v2, v3}, Lcom/google/glass/home/timeline/html/HtmlRenderer;->render(Lcom/google/googlex/glass/common/proto/TimelineItem;ILcom/google/glass/home/timeline/html/HtmlRenderer$OnRenderListener;)V

    .line 47
    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getHtmlPageCount()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected onClear(Landroid/view/View;Z)V
    .locals 2
    .parameter "view"
    .parameter "willBindSameItem"

    .prologue
    .line 71
    if-nez p2, :cond_0

    .line 72
    sget v1, Lcom/google/glass/home/R$id;->rendered_html:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 73
    .local v0, imageView:Landroid/widget/ImageView;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 75
    .end local v0           #imageView:Landroid/widget/ImageView;
    :cond_0
    invoke-direct {p0}, Lcom/google/glass/home/timeline/database/HtmlItemViewBinder;->releaseRenderer()V

    .line 76
    return-void
.end method

.method protected shouldShowTimestamp(Lcom/google/googlex/glass/common/proto/TimelineItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 53
    invoke-virtual {p0, p1}, Lcom/google/glass/home/timeline/database/HtmlItemViewBinder;->getBundleItemIndex(Lcom/google/googlex/glass/common/proto/TimelineItem;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public splitBundle(Lcom/google/googlex/glass/common/proto/TimelineItem;Ljava/util/List;)V
    .locals 4
    .parameter "item"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/googlex/glass/common/proto/TimelineItem;",
            "Ljava/util/List",
            "<",
            "Lcom/google/googlex/glass/common/proto/TimelineItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 88
    .local p2, split:Ljava/util/List;,"Ljava/util/List<Lcom/google/googlex/glass/common/proto/TimelineItem;>;"
    sget-object v2, Lcom/google/glass/home/timeline/TimelineItemAdapter$ViewType;->HTML:Lcom/google/glass/home/timeline/TimelineItemAdapter$ViewType;

    invoke-static {p1}, Lcom/google/glass/home/timeline/TimelineItemAdapter;->getViewType(Lcom/google/googlex/glass/common/proto/TimelineItem;)Lcom/google/glass/home/timeline/TimelineItemAdapter$ViewType;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/glass/home/timeline/TimelineItemAdapter$ViewType;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-static {v2}, Lcom/google/glass/util/Assert;->assertTrue(Z)V

    .line 91
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getHtmlPageCount()I

    move-result v2

    if-nez v2, :cond_1

    .line 94
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 110
    :cond_0
    return-void

    .line 96
    :cond_1
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getHtmlPageCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 97
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/TimelineItem;->newBuilder(Lcom/google/googlex/glass/common/proto/TimelineItem;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    move-result-object v0

    .line 100
    .local v0, builder:Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;
    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->clearHtml()Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    .line 101
    invoke-virtual {p1, v1}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getHtmlPage(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->setHtml(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    .line 106
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p0, v0, v2, p1}, Lcom/google/glass/home/timeline/database/HtmlItemViewBinder;->adjustBundleItemIndex(Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;ILcom/google/googlex/glass/common/proto/TimelineItem;)V

    .line 107
    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->build()Lcom/google/googlex/glass/common/proto/TimelineItem;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
