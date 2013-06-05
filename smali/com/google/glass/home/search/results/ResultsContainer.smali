.class public final Lcom/google/glass/home/search/results/ResultsContainer;
.super Ljava/lang/Object;
.source "ResultsContainer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/home/search/results/ResultsContainer$1;,
        Lcom/google/glass/home/search/results/ResultsContainer$Builder;,
        Lcom/google/glass/home/search/results/ResultsContainer$ResultPage;
    }
.end annotation


# static fields
.field public static final LOCATION_ADDRESS_KEY:Ljava/lang/String; = "LOCATION_ADDRESS_KEY"

.field public static final LOCATION_COORDINATES_KEY:Ljava/lang/String; = "LOCATION_COORDINATES_KEY"

.field public static final LOCATION_NAME_KEY:Ljava/lang/String; = "LOCATION_NAME_KEY"

.field public static final PHONE_NUMBER_KEY:Ljava/lang/String; = "PHONE_NUMBER_KEY"

.field public static final TTS_FORMAT_STRING_KEY:Ljava/lang/String; = "TTS_FORMAT_STRING_KEY"

.field public static final TTS_LANGUAGE_KEY:Ljava/lang/String; = "TTS_LANGUAGE_KEY"

.field public static final URL_KEY:Ljava/lang/String; = "URL_KEY"


# instance fields
.field private isStartSoundSearchResult:Z

.field private final resultPages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/glass/home/search/results/ResultsContainer$ResultPage;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/util/List;Z)V
    .locals 0
    .parameter
    .parameter "isStartSoundSearchResult"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/glass/home/search/results/ResultsContainer$ResultPage;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 32
    .local p1, resultPages:Ljava/util/List;,"Ljava/util/List<Lcom/google/glass/home/search/results/ResultsContainer$ResultPage;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/google/glass/home/search/results/ResultsContainer;->resultPages:Ljava/util/List;

    .line 34
    iput-boolean p2, p0, Lcom/google/glass/home/search/results/ResultsContainer;->isStartSoundSearchResult:Z

    .line 35
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/List;ZLcom/google/glass/home/search/results/ResultsContainer$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Lcom/google/glass/home/search/results/ResultsContainer;-><init>(Ljava/util/List;Z)V

    return-void
.end method

.method public static newBuilder()Lcom/google/glass/home/search/results/ResultsContainer$Builder;
    .locals 1

    .prologue
    .line 42
    new-instance v0, Lcom/google/glass/home/search/results/ResultsContainer$Builder;

    invoke-direct {v0}, Lcom/google/glass/home/search/results/ResultsContainer$Builder;-><init>()V

    return-object v0
.end method

.method public static newStartSoundSearchResult()Lcom/google/glass/home/search/results/ResultsContainer;
    .locals 2

    .prologue
    .line 38
    new-instance v0, Lcom/google/glass/home/search/results/ResultsContainer$Builder;

    invoke-direct {v0}, Lcom/google/glass/home/search/results/ResultsContainer$Builder;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/glass/home/search/results/ResultsContainer$Builder;->setIsStartSoundSearchResult(Z)Lcom/google/glass/home/search/results/ResultsContainer$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/home/search/results/ResultsContainer$Builder;->build()Lcom/google/glass/home/search/results/ResultsContainer;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getBundleAt(I)Landroid/os/Bundle;
    .locals 1
    .parameter "index"

    .prologue
    .line 62
    invoke-virtual {p0}, Lcom/google/glass/home/search/results/ResultsContainer;->getResultPages()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/home/search/results/ResultsContainer$ResultPage;

    invoke-virtual {v0}, Lcom/google/glass/home/search/results/ResultsContainer$ResultPage;->getBundle()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public getOptionMenuAt(I)Lcom/google/glass/widget/OptionMenu;
    .locals 1
    .parameter "index"

    .prologue
    .line 58
    invoke-virtual {p0}, Lcom/google/glass/home/search/results/ResultsContainer;->getResultPages()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/home/search/results/ResultsContainer$ResultPage;

    invoke-virtual {v0}, Lcom/google/glass/home/search/results/ResultsContainer$ResultPage;->getOptionMenu()Lcom/google/glass/widget/OptionMenu;

    move-result-object v0

    return-object v0
.end method

.method public getResultPageCount()I
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/google/glass/home/search/results/ResultsContainer;->resultPages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getResultPages()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/glass/home/search/results/ResultsContainer$ResultPage;",
            ">;"
        }
    .end annotation

    .prologue
    .line 50
    iget-object v0, p0, Lcom/google/glass/home/search/results/ResultsContainer;->resultPages:Ljava/util/List;

    return-object v0
.end method

.method public getViewAt(I)Landroid/view/View;
    .locals 1
    .parameter "index"

    .prologue
    .line 54
    invoke-virtual {p0}, Lcom/google/glass/home/search/results/ResultsContainer;->getResultPages()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/home/search/results/ResultsContainer$ResultPage;

    invoke-virtual {v0}, Lcom/google/glass/home/search/results/ResultsContainer$ResultPage;->getView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public isStartSoundSearchResult()Z
    .locals 1

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/google/glass/home/search/results/ResultsContainer;->isStartSoundSearchResult:Z

    return v0
.end method
