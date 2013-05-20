.class Lcom/google/glass/ongoing/OngoingActivityMessage;
.super Ljava/lang/Object;
.source "OngoingActivityMessage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/ongoing/OngoingActivityMessage$Operation;
    }
.end annotation


# static fields
.field private static final KEY_ACTIVITY:Ljava/lang/String; = "activity"

.field private static final KEY_OPERATION:Ljava/lang/String; = "operation"

.field private static final KEY_PARAMS:Ljava/lang/String; = "params"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final activity:Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;

.field private final operation:Lcom/google/glass/ongoing/OngoingActivityMessage$Operation;

.field private final params:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    const-class v0, Lcom/google/glass/ongoing/OngoingActivityMessage;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/ongoing/OngoingActivityMessage;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;Lcom/google/glass/ongoing/OngoingActivityMessage$Operation;Landroid/os/Bundle;)V
    .locals 0
    .parameter "activity"
    .parameter "operation"
    .parameter "params"

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/google/glass/ongoing/OngoingActivityMessage;->activity:Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;

    .line 34
    iput-object p2, p0, Lcom/google/glass/ongoing/OngoingActivityMessage;->operation:Lcom/google/glass/ongoing/OngoingActivityMessage$Operation;

    .line 35
    if-nez p3, :cond_0

    new-instance p3, Landroid/os/Bundle;

    .end local p3
    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    :cond_0
    iput-object p3, p0, Lcom/google/glass/ongoing/OngoingActivityMessage;->params:Landroid/os/Bundle;

    .line 36
    return-void
.end method

.method static fromBundle(Landroid/os/Bundle;)Lcom/google/glass/ongoing/OngoingActivityMessage;
    .locals 6
    .parameter "bundle"

    .prologue
    const/4 v2, 0x0

    .line 59
    if-eqz p0, :cond_0

    const-string v1, "activity"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "operation"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "params"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 63
    :cond_0
    sget-object v1, Lcom/google/glass/ongoing/OngoingActivityMessage;->TAG:Ljava/lang/String;

    const-string v3, "Bundle missing required fields"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v2

    .line 74
    :goto_0
    return-object v1

    .line 68
    :cond_1
    :try_start_0
    new-instance v1, Lcom/google/glass/ongoing/OngoingActivityMessage;

    invoke-static {}, Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;->values()[Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;

    move-result-object v3

    const-string v4, "activity"

    invoke-virtual {p0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    aget-object v3, v3, v4

    invoke-static {}, Lcom/google/glass/ongoing/OngoingActivityMessage$Operation;->values()[Lcom/google/glass/ongoing/OngoingActivityMessage$Operation;

    move-result-object v4

    const-string v5, "operation"

    invoke-virtual {p0, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    aget-object v4, v4, v5

    const-string v5, "params"

    invoke-virtual {p0, v5}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v5

    invoke-direct {v1, v3, v4, v5}, Lcom/google/glass/ongoing/OngoingActivityMessage;-><init>(Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;Lcom/google/glass/ongoing/OngoingActivityMessage$Operation;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 72
    :catch_0
    move-exception v0

    .line 73
    .local v0, e:Ljava/lang/ArrayIndexOutOfBoundsException;
    sget-object v1, Lcom/google/glass/ongoing/OngoingActivityMessage;->TAG:Ljava/lang/String;

    const-string v3, "Value out of bounds. Are sender and receiver built at different CLs?"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v2

    .line 74
    goto :goto_0
.end method


# virtual methods
.method getActivityType()Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/google/glass/ongoing/OngoingActivityMessage;->activity:Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;

    return-object v0
.end method

.method getOperation()Lcom/google/glass/ongoing/OngoingActivityMessage$Operation;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/google/glass/ongoing/OngoingActivityMessage;->operation:Lcom/google/glass/ongoing/OngoingActivityMessage$Operation;

    return-object v0
.end method

.method getParams()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/google/glass/ongoing/OngoingActivityMessage;->params:Landroid/os/Bundle;

    return-object v0
.end method

.method toBundle()Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 51
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 52
    .local v0, bundle:Landroid/os/Bundle;
    const-string v1, "activity"

    iget-object v2, p0, Lcom/google/glass/ongoing/OngoingActivityMessage;->activity:Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;

    invoke-virtual {v2}, Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;->ordinal()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 53
    const-string v1, "operation"

    iget-object v2, p0, Lcom/google/glass/ongoing/OngoingActivityMessage;->operation:Lcom/google/glass/ongoing/OngoingActivityMessage$Operation;

    invoke-virtual {v2}, Lcom/google/glass/ongoing/OngoingActivityMessage$Operation;->ordinal()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 54
    const-string v1, "params"

    iget-object v2, p0, Lcom/google/glass/ongoing/OngoingActivityMessage;->params:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 55
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/ongoing/OngoingActivityMessage;->activity:Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/ongoing/OngoingActivityMessage;->operation:Lcom/google/glass/ongoing/OngoingActivityMessage$Operation;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
