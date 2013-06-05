.class public Lcom/google/glass/home/timeline/database/SearchItemViewBinder;
.super Lcom/google/glass/home/timeline/database/BaseItemViewBinder;
.source "SearchItemViewBinder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/home/timeline/database/SearchItemViewBinder$SearchProtoLoadingTask;,
        Lcom/google/glass/home/timeline/database/SearchItemViewBinder$SearchHtmlLoadingTask;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-class v0, Lcom/google/glass/home/timeline/database/SearchItemViewBinder;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/home/timeline/database/SearchItemViewBinder;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/google/glass/home/timeline/database/BaseItemViewBinder;-><init>()V

    .line 98
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/google/glass/home/timeline/database/SearchItemViewBinder;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private clearImagesFromViewGroup(Landroid/view/ViewGroup;)V
    .locals 3
    .parameter "viewGroup"

    .prologue
    .line 220
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 221
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 222
    .local v0, child:Landroid/view/View;
    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_1

    .line 223
    check-cast v0, Landroid/view/ViewGroup;

    .end local v0           #child:Landroid/view/View;
    invoke-direct {p0, v0}, Lcom/google/glass/home/timeline/database/SearchItemViewBinder;->clearImagesFromViewGroup(Landroid/view/ViewGroup;)V

    .line 220
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 224
    .restart local v0       #child:Landroid/view/View;
    :cond_1
    instance-of v2, v0, Landroid/widget/ImageView;

    if-eqz v2, :cond_0

    .line 225
    check-cast v0, Landroid/widget/ImageView;

    .end local v0           #child:Landroid/view/View;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 228
    :cond_2
    return-void
.end method


# virtual methods
.method public getLayout()I
    .locals 1

    .prologue
    .line 37
    sget v0, Lcom/google/glass/home/R$layout;->timeline_item_search:I

    return v0
.end method

.method protected onBind(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineItem;ZZLandroid/view/View;Lcom/google/glass/util/CachedBitmapFactory;Lcom/google/glass/widget/DynamicSizeTextView$TextClipListener;)Z
    .locals 7
    .parameter "context"
    .parameter "item"
    .parameter "inBundle"
    .parameter "isReadMore"
    .parameter "view"
    .parameter "bitmapFactory"
    .parameter "textClipListener"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 162
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "proto/search"

    aput-object v4, v3, v5

    const-string v4, "application/glass+html"

    aput-object v4, v3, v6

    invoke-static {p2, v3}, Lcom/google/glass/timeline/TimelineHelper;->hasAttachmentOfTypes(Lcom/google/googlex/glass/common/proto/TimelineItem;[Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 165
    sget-object v3, Lcom/google/glass/home/timeline/database/SearchItemViewBinder;->TAG:Ljava/lang/String;

    const-string v4, "Timeline item does not have a search proto or answer card HTML attachment"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    :goto_0
    return v5

    .line 169
    :cond_0
    new-array v3, v6, [Ljava/lang/String;

    const-string v4, "application/glass+html"

    aput-object v4, v3, v5

    invoke-static {p2, v3}, Lcom/google/glass/timeline/TimelineHelper;->hasAttachmentOfTypes(Lcom/google/googlex/glass/common/proto/TimelineItem;[Ljava/lang/String;)Z

    move-result v1

    .line 172
    .local v1, isAnswerCard:Z
    sget v3, Lcom/google/glass/home/R$id;->cover:I

    invoke-virtual {p5, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 174
    .local v0, coverView:Landroid/widget/LinearLayout;
    if-eqz v1, :cond_1

    new-instance v2, Lcom/google/glass/home/timeline/database/SearchItemViewBinder$SearchHtmlLoadingTask;

    invoke-virtual {p2, v5}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getAttachment(I)Lcom/google/googlex/glass/common/proto/Attachment;

    move-result-object v3

    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, p0, v3, v4, v0}, Lcom/google/glass/home/timeline/database/SearchItemViewBinder$SearchHtmlLoadingTask;-><init>(Lcom/google/glass/home/timeline/database/SearchItemViewBinder;Lcom/google/googlex/glass/common/proto/Attachment;Ljava/lang/String;Landroid/view/ViewGroup;)V

    .line 179
    .local v2, loadingTask:Lcom/google/glass/util/DeferredContentLoader$LoadingTask;,"Lcom/google/glass/util/DeferredContentLoader$LoadingTask<*>;"
    :goto_1
    sget v3, Lcom/google/glass/home/R$id;->tag_loading_task:I

    invoke-virtual {p5, v3, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 180
    invoke-static {p5, v2}, Lcom/google/glass/util/DeferredContentLoader;->loadForScrollItemSubview(Landroid/view/View;Lcom/google/glass/util/DeferredContentLoader$LoadingTask;)V

    goto :goto_0

    .line 174
    .end local v2           #loadingTask:Lcom/google/glass/util/DeferredContentLoader$LoadingTask;,"Lcom/google/glass/util/DeferredContentLoader$LoadingTask<*>;"
    :cond_1
    new-instance v2, Lcom/google/glass/home/timeline/database/SearchItemViewBinder$SearchProtoLoadingTask;

    invoke-virtual {p2, v5}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getAttachment(I)Lcom/google/googlex/glass/common/proto/Attachment;

    move-result-object v3

    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, p0, v3, v4, v0}, Lcom/google/glass/home/timeline/database/SearchItemViewBinder$SearchProtoLoadingTask;-><init>(Lcom/google/glass/home/timeline/database/SearchItemViewBinder;Lcom/google/googlex/glass/common/proto/Attachment;Ljava/lang/String;Landroid/view/ViewGroup;)V

    goto :goto_1
.end method

.method protected onClear(Landroid/view/View;Z)V
    .locals 3
    .parameter "view"
    .parameter "willBindSameItem"

    .prologue
    .line 205
    sget v1, Lcom/google/glass/home/R$id;->tag_loading_task:I

    invoke-virtual {p1, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/util/DeferredContentLoader$LoadingTask;

    .line 207
    .local v0, loadingTask:Lcom/google/glass/util/DeferredContentLoader$LoadingTask;,"Lcom/google/glass/util/DeferredContentLoader$LoadingTask<*>;"
    if-eqz v0, :cond_0

    .line 208
    invoke-static {v0}, Lcom/google/glass/util/DeferredContentLoader;->cancel(Lcom/google/glass/util/DeferredContentLoader$LoadingTask;)V

    .line 209
    sget v1, Lcom/google/glass/home/R$id;->tag_loading_task:I

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 212
    :cond_0
    instance-of v1, p1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    .line 215
    check-cast p1, Landroid/view/ViewGroup;

    .end local p1
    invoke-direct {p0, p1}, Lcom/google/glass/home/timeline/database/SearchItemViewBinder;->clearImagesFromViewGroup(Landroid/view/ViewGroup;)V

    .line 217
    :cond_1
    return-void
.end method

.method protected provideInfoText(Lcom/google/googlex/glass/common/proto/TimelineItem;)Ljava/lang/String;
    .locals 1
    .parameter "item"

    .prologue
    .line 190
    const/4 v0, 0x0

    return-object v0
.end method

.method protected shouldHideSyncIcon(Lcom/google/googlex/glass/common/proto/TimelineItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 197
    const/4 v0, 0x1

    return v0
.end method

.method public splitBundle(Lcom/google/googlex/glass/common/proto/TimelineItem;Ljava/util/List;)V
    .locals 2
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
    .line 232
    .local p2, split:Ljava/util/List;,"Ljava/util/List<Lcom/google/googlex/glass/common/proto/TimelineItem;>;"
    sget-object v0, Lcom/google/glass/home/timeline/TimelineItemAdapter$ViewType;->SEARCH:Lcom/google/glass/home/timeline/TimelineItemAdapter$ViewType;

    invoke-static {p1}, Lcom/google/glass/home/timeline/TimelineItemAdapter;->getViewType(Lcom/google/googlex/glass/common/proto/TimelineItem;)Lcom/google/glass/home/timeline/TimelineItemAdapter$ViewType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/glass/home/timeline/TimelineItemAdapter$ViewType;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lcom/google/glass/util/Assert;->assertTrue(Z)V

    .line 236
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 237
    return-void
.end method
