.class public abstract Lcom/google/glass/home/timeline/MainTimelineView;
.super Lcom/google/glass/home/timeline/TimelineView;
.source "MainTimelineView.java"


# static fields
.field static final TAG:Ljava/lang/String;


# instance fields
.field private activeItemAdapter:Lcom/google/glass/home/timeline/TimelineView$AdapterWrapper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/glass/home/timeline/TimelineView$AdapterWrapper",
            "<",
            "Lcom/google/glass/home/timeline/active/ActiveItemAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private historyTimelineAdapter:Lcom/google/glass/home/timeline/TimelineView$AdapterWrapper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/glass/home/timeline/TimelineView$AdapterWrapper",
            "<*>;"
        }
    .end annotation
.end field

.field private pinnedTimelineAdapter:Lcom/google/glass/home/timeline/TimelineView$AdapterWrapper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/glass/home/timeline/TimelineView$AdapterWrapper",
            "<*>;"
        }
    .end annotation
.end field

.field private settingsAdapter:Lcom/google/glass/home/timeline/TimelineView$AdapterWrapper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/glass/home/timeline/TimelineView$AdapterWrapper",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-class v0, Lcom/google/glass/home/timeline/MainTimelineView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/home/timeline/MainTimelineView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/google/glass/home/timeline/TimelineView;-><init>(Landroid/content/Context;)V

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 58
    invoke-direct {p0, p1, p2}, Lcom/google/glass/home/timeline/TimelineView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 62
    invoke-direct {p0, p1, p2, p3}, Lcom/google/glass/home/timeline/TimelineView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 63
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 98
    iput-object v0, p0, Lcom/google/glass/home/timeline/MainTimelineView;->settingsAdapter:Lcom/google/glass/home/timeline/TimelineView$AdapterWrapper;

    .line 99
    iput-object v0, p0, Lcom/google/glass/home/timeline/MainTimelineView;->pinnedTimelineAdapter:Lcom/google/glass/home/timeline/TimelineView$AdapterWrapper;

    .line 100
    iput-object v0, p0, Lcom/google/glass/home/timeline/MainTimelineView;->activeItemAdapter:Lcom/google/glass/home/timeline/TimelineView$AdapterWrapper;

    .line 101
    iput-object v0, p0, Lcom/google/glass/home/timeline/MainTimelineView;->historyTimelineAdapter:Lcom/google/glass/home/timeline/TimelineView$AdapterWrapper;

    .line 102
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/glass/home/timeline/TimelineView$AdapterWrapper;

    invoke-virtual {p0, v0}, Lcom/google/glass/home/timeline/MainTimelineView;->setAdapters([Lcom/google/glass/home/timeline/TimelineView$AdapterWrapper;)V

    .line 103
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/glass/home/timeline/MainTimelineView;->updateViews(Z)V

    .line 104
    return-void
.end method

.method protected abstract createActiveItemAdapter(Landroid/app/Activity;)Lcom/google/glass/home/timeline/TimelineView$AdapterWrapper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            ")",
            "Lcom/google/glass/home/timeline/TimelineView$AdapterWrapper",
            "<",
            "Lcom/google/glass/home/timeline/active/ActiveItemAdapter;",
            ">;"
        }
    .end annotation
.end method

.method protected abstract createSettingsAdapter(Landroid/app/Activity;)Lcom/google/glass/home/timeline/TimelineView$AdapterWrapper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            ")",
            "Lcom/google/glass/home/timeline/TimelineView$AdapterWrapper",
            "<*>;"
        }
    .end annotation
.end method

.method protected abstract createTimelineItemAdapter(Landroid/app/Activity;Lcom/google/glass/util/CachedBitmapFactory;ZZLjava/util/List;)Lcom/google/glass/home/timeline/TimelineView$AdapterWrapper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/google/glass/util/CachedBitmapFactory;",
            "ZZ",
            "Ljava/util/List",
            "<",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;>;)",
            "Lcom/google/glass/home/timeline/TimelineView$AdapterWrapper",
            "<*>;"
        }
    .end annotation
.end method

.method public getCurrentVoiceConfig()Lcom/google/glass/voice/VoiceConfigDescriptor;
    .locals 2

    .prologue
    .line 123
    invoke-virtual {p0}, Lcom/google/glass/home/timeline/MainTimelineView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/glass/bluetooth/BluetoothHeadset;->isInCallOrCallSetup(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/glass/home/timeline/MainTimelineView;->getSelectedItemPosition()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/glass/home/timeline/MainTimelineView;->getHomePosition()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 125
    sget-object v0, Lcom/google/glass/voice/VoiceConfigDescriptor;->GUARD:Lcom/google/glass/voice/VoiceConfigDescriptor;

    .line 127
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/google/glass/voice/VoiceConfigDescriptor;->OFF:Lcom/google/glass/voice/VoiceConfigDescriptor;

    goto :goto_0
.end method

.method public getFirstFutureItemPosition()I
    .locals 7

    .prologue
    const/4 v4, 0x1

    .line 136
    invoke-virtual {p0}, Lcom/google/glass/home/timeline/MainTimelineView;->getFirstPinnedItemPosition()I

    move-result v2

    .line 137
    .local v2, firstPinned:I
    invoke-virtual {p0}, Lcom/google/glass/home/timeline/MainTimelineView;->getHomePosition()I

    move-result v5

    if-ne v2, v5, :cond_1

    .line 138
    sget-object v5, Lcom/google/glass/home/timeline/MainTimelineView;->TAG:Ljava/lang/String;

    const-string v6, "Pinned adapter came back with home position, checking for settings cover view."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    iget-object v5, p0, Lcom/google/glass/home/timeline/MainTimelineView;->settingsAdapter:Lcom/google/glass/home/timeline/TimelineView$AdapterWrapper;

    if-eqz v5, :cond_1

    .line 140
    iget-object v5, p0, Lcom/google/glass/home/timeline/MainTimelineView;->settingsAdapter:Lcom/google/glass/home/timeline/TimelineView$AdapterWrapper;

    invoke-virtual {v5}, Lcom/google/glass/home/timeline/TimelineView$AdapterWrapper;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 141
    .local v0, adapter:Landroid/widget/Adapter;
    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/widget/Adapter;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    .line 142
    sget-object v5, Lcom/google/glass/home/timeline/MainTimelineView;->TAG:Ljava/lang/String;

    const-string v6, "settingsAdapter was not null or empty."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    iget-object v5, p0, Lcom/google/glass/home/timeline/MainTimelineView;->settingsAdapter:Lcom/google/glass/home/timeline/TimelineView$AdapterWrapper;

    invoke-virtual {p0, v5}, Lcom/google/glass/home/timeline/MainTimelineView;->getAdapterOffset(Lcom/google/glass/home/timeline/TimelineView$AdapterWrapper;)I

    move-result v1

    .line 146
    .local v1, base:I
    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v5

    if-ne v5, v4, :cond_0

    :goto_0
    invoke-static {v4}, Lcom/google/glass/util/Assert;->assertTrue(Z)V

    .line 147
    const/4 v3, 0x0

    .line 148
    .local v3, offset:I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/google/glass/home/timeline/MainTimelineView;->TAG:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/getFirstFutureItemPosition"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "base="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", offset="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    add-int v2, v1, v3

    .line 154
    .end local v0           #adapter:Landroid/widget/Adapter;
    .end local v1           #base:I
    .end local v2           #firstPinned:I
    .end local v3           #offset:I
    :goto_1
    return v2

    .line 146
    .restart local v0       #adapter:Landroid/widget/Adapter;
    .restart local v1       #base:I
    .restart local v2       #firstPinned:I
    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    .line 153
    .end local v0           #adapter:Landroid/widget/Adapter;
    .end local v1           #base:I
    :cond_1
    sget-object v4, Lcom/google/glass/home/timeline/MainTimelineView;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Returning item from pinned adapter: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public getFirstHistoryItemPosition()I
    .locals 6

    .prologue
    .line 194
    iget-object v3, p0, Lcom/google/glass/home/timeline/MainTimelineView;->historyTimelineAdapter:Lcom/google/glass/home/timeline/TimelineView$AdapterWrapper;

    if-eqz v3, :cond_0

    .line 195
    iget-object v3, p0, Lcom/google/glass/home/timeline/MainTimelineView;->historyTimelineAdapter:Lcom/google/glass/home/timeline/TimelineView$AdapterWrapper;

    invoke-virtual {v3}, Lcom/google/glass/home/timeline/TimelineView$AdapterWrapper;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 196
    .local v0, adapter:Landroid/widget/Adapter;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/widget/Adapter;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 199
    iget-object v3, p0, Lcom/google/glass/home/timeline/MainTimelineView;->historyTimelineAdapter:Lcom/google/glass/home/timeline/TimelineView$AdapterWrapper;

    invoke-virtual {p0, v3}, Lcom/google/glass/home/timeline/MainTimelineView;->getAdapterOffset(Lcom/google/glass/home/timeline/TimelineView$AdapterWrapper;)I

    move-result v1

    .line 200
    .local v1, base:I
    const/4 v2, 0x0

    .line 201
    .local v2, offset:I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/google/glass/home/timeline/MainTimelineView;->TAG:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/getFirstHistoryItemPosition"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "base="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", offset="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    add-int v3, v1, v2

    .line 206
    .end local v0           #adapter:Landroid/widget/Adapter;
    .end local v1           #base:I
    .end local v2           #offset:I
    :goto_0
    return v3

    .line 205
    :cond_0
    sget-object v3, Lcom/google/glass/home/timeline/MainTimelineView;->TAG:Ljava/lang/String;

    const-string v4, "Failed to get a position from historyTimelineAdapter, switching to home position."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    invoke-virtual {p0}, Lcom/google/glass/home/timeline/MainTimelineView;->getHomePosition()I

    move-result v3

    goto :goto_0
.end method

.method public getFirstPinnedItemPosition()I
    .locals 6

    .prologue
    .line 159
    iget-object v3, p0, Lcom/google/glass/home/timeline/MainTimelineView;->pinnedTimelineAdapter:Lcom/google/glass/home/timeline/TimelineView$AdapterWrapper;

    if-eqz v3, :cond_0

    .line 160
    iget-object v3, p0, Lcom/google/glass/home/timeline/MainTimelineView;->pinnedTimelineAdapter:Lcom/google/glass/home/timeline/TimelineView$AdapterWrapper;

    invoke-virtual {v3}, Lcom/google/glass/home/timeline/TimelineView$AdapterWrapper;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 161
    .local v0, adapter:Landroid/widget/Adapter;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/widget/Adapter;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 162
    sget-object v3, Lcom/google/glass/home/timeline/MainTimelineView;->TAG:Ljava/lang/String;

    const-string v4, "... the pinnedTimelineAdapter"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    iget-object v3, p0, Lcom/google/glass/home/timeline/MainTimelineView;->pinnedTimelineAdapter:Lcom/google/glass/home/timeline/TimelineView$AdapterWrapper;

    invoke-virtual {p0, v3}, Lcom/google/glass/home/timeline/MainTimelineView;->getAdapterOffset(Lcom/google/glass/home/timeline/TimelineView$AdapterWrapper;)I

    move-result v1

    .line 166
    .local v1, base:I
    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    .line 167
    .local v2, offset:I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/google/glass/home/timeline/MainTimelineView;->TAG:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/getFirstPinnedItemPosition"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "base="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", offset="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    add-int v3, v1, v2

    .line 173
    .end local v0           #adapter:Landroid/widget/Adapter;
    .end local v1           #base:I
    .end local v2           #offset:I
    :goto_0
    return v3

    :cond_0
    invoke-virtual {p0}, Lcom/google/glass/home/timeline/MainTimelineView;->getMostRelevantActiveItemPosition()I

    move-result v3

    goto :goto_0
.end method

.method public getHomePosition()I
    .locals 3

    .prologue
    .line 108
    iget-object v1, p0, Lcom/google/glass/home/timeline/MainTimelineView;->activeItemAdapter:Lcom/google/glass/home/timeline/TimelineView$AdapterWrapper;

    if-eqz v1, :cond_0

    .line 109
    iget-object v1, p0, Lcom/google/glass/home/timeline/MainTimelineView;->activeItemAdapter:Lcom/google/glass/home/timeline/TimelineView$AdapterWrapper;

    invoke-virtual {v1}, Lcom/google/glass/home/timeline/TimelineView$AdapterWrapper;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    check-cast v0, Lcom/google/glass/home/timeline/active/ActiveItemAdapter;

    .line 110
    .local v0, adapter:Lcom/google/glass/home/timeline/active/ActiveItemAdapter;
    iget-object v1, p0, Lcom/google/glass/home/timeline/MainTimelineView;->activeItemAdapter:Lcom/google/glass/home/timeline/TimelineView$AdapterWrapper;

    invoke-virtual {p0, v1}, Lcom/google/glass/home/timeline/MainTimelineView;->getAdapterOffset(Lcom/google/glass/home/timeline/TimelineView$AdapterWrapper;)I

    move-result v1

    invoke-virtual {v0}, Lcom/google/glass/home/timeline/active/ActiveItemAdapter;->getHomePosition()I

    move-result v2

    add-int/2addr v1, v2

    .line 115
    .end local v0           #adapter:Lcom/google/glass/home/timeline/active/ActiveItemAdapter;
    :goto_0
    return v1

    .line 114
    :cond_0
    invoke-static {}, Lcom/google/glass/util/Assert;->assertIsTest()V

    .line 115
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getMostRelevantActiveItemPosition()I
    .locals 6

    .prologue
    .line 178
    iget-object v3, p0, Lcom/google/glass/home/timeline/MainTimelineView;->activeItemAdapter:Lcom/google/glass/home/timeline/TimelineView$AdapterWrapper;

    if-eqz v3, :cond_0

    .line 179
    iget-object v3, p0, Lcom/google/glass/home/timeline/MainTimelineView;->activeItemAdapter:Lcom/google/glass/home/timeline/TimelineView$AdapterWrapper;

    invoke-virtual {v3}, Lcom/google/glass/home/timeline/TimelineView$AdapterWrapper;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    check-cast v0, Lcom/google/glass/home/timeline/active/ActiveItemAdapter;

    .line 180
    .local v0, adapter:Lcom/google/glass/home/timeline/active/ActiveItemAdapter;
    iget-object v3, p0, Lcom/google/glass/home/timeline/MainTimelineView;->activeItemAdapter:Lcom/google/glass/home/timeline/TimelineView$AdapterWrapper;

    invoke-virtual {p0, v3}, Lcom/google/glass/home/timeline/MainTimelineView;->getAdapterOffset(Lcom/google/glass/home/timeline/TimelineView$AdapterWrapper;)I

    move-result v1

    .line 181
    .local v1, base:I
    invoke-virtual {v0}, Lcom/google/glass/home/timeline/active/ActiveItemAdapter;->getMostRelevantItemPosition()I

    move-result v2

    .line 182
    .local v2, offset:I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/google/glass/home/timeline/MainTimelineView;->TAG:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/getMostRelevantActiveItemPosition"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "base="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", offset="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    add-int v3, v1, v2

    .line 188
    .end local v0           #adapter:Lcom/google/glass/home/timeline/active/ActiveItemAdapter;
    .end local v1           #base:I
    .end local v2           #offset:I
    :goto_0
    return v3

    .line 187
    :cond_0
    invoke-static {}, Lcom/google/glass/util/Assert;->assertIsTest()V

    .line 188
    invoke-virtual {p0}, Lcom/google/glass/home/timeline/MainTimelineView;->getHomePosition()I

    move-result v3

    goto :goto_0
.end method

.method public init(Landroid/app/Activity;Lcom/google/glass/util/CachedBitmapFactory;)Ljava/util/List;
    .locals 12
    .parameter "activity"
    .parameter "bitmapFactory"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/google/glass/util/CachedBitmapFactory;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;>;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 74
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 77
    .local v5, loaders:Ljava/util/List;,"Ljava/util/List<Landroid/content/Loader<Landroid/database/Cursor;>;>;"
    invoke-virtual {p0, p1}, Lcom/google/glass/home/timeline/MainTimelineView;->createSettingsAdapter(Landroid/app/Activity;)Lcom/google/glass/home/timeline/TimelineView$AdapterWrapper;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/home/timeline/MainTimelineView;->settingsAdapter:Lcom/google/glass/home/timeline/TimelineView$AdapterWrapper;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 80
    invoke-virtual/range {v0 .. v5}, Lcom/google/glass/home/timeline/MainTimelineView;->createTimelineItemAdapter(Landroid/app/Activity;Lcom/google/glass/util/CachedBitmapFactory;ZZLjava/util/List;)Lcom/google/glass/home/timeline/TimelineView$AdapterWrapper;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/home/timeline/MainTimelineView;->pinnedTimelineAdapter:Lcom/google/glass/home/timeline/TimelineView$AdapterWrapper;

    .line 84
    invoke-virtual {p0, p1}, Lcom/google/glass/home/timeline/MainTimelineView;->createActiveItemAdapter(Landroid/app/Activity;)Lcom/google/glass/home/timeline/TimelineView$AdapterWrapper;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/home/timeline/MainTimelineView;->activeItemAdapter:Lcom/google/glass/home/timeline/TimelineView$AdapterWrapper;

    move-object v6, p0

    move-object v7, p1

    move-object v8, p2

    move v9, v4

    move v10, v3

    move-object v11, v5

    .line 87
    invoke-virtual/range {v6 .. v11}, Lcom/google/glass/home/timeline/MainTimelineView;->createTimelineItemAdapter(Landroid/app/Activity;Lcom/google/glass/util/CachedBitmapFactory;ZZLjava/util/List;)Lcom/google/glass/home/timeline/TimelineView$AdapterWrapper;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/home/timeline/MainTimelineView;->historyTimelineAdapter:Lcom/google/glass/home/timeline/TimelineView$AdapterWrapper;

    .line 91
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/google/glass/home/timeline/TimelineView$AdapterWrapper;

    iget-object v1, p0, Lcom/google/glass/home/timeline/MainTimelineView;->settingsAdapter:Lcom/google/glass/home/timeline/TimelineView$AdapterWrapper;

    aput-object v1, v0, v4

    iget-object v1, p0, Lcom/google/glass/home/timeline/MainTimelineView;->pinnedTimelineAdapter:Lcom/google/glass/home/timeline/TimelineView$AdapterWrapper;

    aput-object v1, v0, v3

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/glass/home/timeline/MainTimelineView;->activeItemAdapter:Lcom/google/glass/home/timeline/TimelineView$AdapterWrapper;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/glass/home/timeline/MainTimelineView;->historyTimelineAdapter:Lcom/google/glass/home/timeline/TimelineView$AdapterWrapper;

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/google/glass/home/timeline/MainTimelineView;->setAdapters([Lcom/google/glass/home/timeline/TimelineView$AdapterWrapper;)V

    .line 93
    return-object v5
.end method

.method protected onPreActivate()V
    .locals 2

    .prologue
    .line 211
    invoke-super {p0}, Lcom/google/glass/home/timeline/TimelineView;->onPreActivate()V

    .line 212
    iget-object v1, p0, Lcom/google/glass/home/timeline/MainTimelineView;->activeItemAdapter:Lcom/google/glass/home/timeline/TimelineView$AdapterWrapper;

    if-eqz v1, :cond_0

    .line 213
    iget-object v1, p0, Lcom/google/glass/home/timeline/MainTimelineView;->activeItemAdapter:Lcom/google/glass/home/timeline/TimelineView$AdapterWrapper;

    invoke-virtual {v1}, Lcom/google/glass/home/timeline/TimelineView$AdapterWrapper;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    check-cast v0, Lcom/google/glass/home/timeline/active/ActiveItemAdapter;

    .line 214
    .local v0, adapter:Lcom/google/glass/home/timeline/active/ActiveItemAdapter;
    invoke-virtual {v0}, Lcom/google/glass/home/timeline/active/ActiveItemAdapter;->activate()V

    .line 220
    .end local v0           #adapter:Lcom/google/glass/home/timeline/active/ActiveItemAdapter;
    :goto_0
    return-void

    .line 218
    :cond_0
    invoke-static {}, Lcom/google/glass/util/Assert;->assertIsTest()V

    goto :goto_0
.end method

.method public onPreDeactivate()V
    .locals 2

    .prologue
    .line 224
    invoke-super {p0}, Lcom/google/glass/home/timeline/TimelineView;->onPreDeactivate()V

    .line 225
    iget-object v1, p0, Lcom/google/glass/home/timeline/MainTimelineView;->activeItemAdapter:Lcom/google/glass/home/timeline/TimelineView$AdapterWrapper;

    if-eqz v1, :cond_0

    .line 226
    iget-object v1, p0, Lcom/google/glass/home/timeline/MainTimelineView;->activeItemAdapter:Lcom/google/glass/home/timeline/TimelineView$AdapterWrapper;

    invoke-virtual {v1}, Lcom/google/glass/home/timeline/TimelineView$AdapterWrapper;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    check-cast v0, Lcom/google/glass/home/timeline/active/ActiveItemAdapter;

    .line 227
    .local v0, adapter:Lcom/google/glass/home/timeline/active/ActiveItemAdapter;
    invoke-virtual {v0}, Lcom/google/glass/home/timeline/active/ActiveItemAdapter;->deactivate()V

    .line 233
    .end local v0           #adapter:Lcom/google/glass/home/timeline/active/ActiveItemAdapter;
    :goto_0
    return-void

    .line 231
    :cond_0
    invoke-static {}, Lcom/google/glass/util/Assert;->assertIsTest()V

    goto :goto_0
.end method
