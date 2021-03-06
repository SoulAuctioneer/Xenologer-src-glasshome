.class public Lcom/google/glass/companion/UuidFetcher;
.super Ljava/lang/Object;
.source "UuidFetcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/companion/UuidFetcher$Callback;
    }
.end annotation


# static fields
.field private static final ACTION_BLUETOOTHDEVICE_UUID:Ljava/lang/String; = "android.bluetooth.device.action.UUID"

.field private static final BT_UUID_RECEIVER_INTENT:Landroid/content/IntentFilter; = null

.field private static final EXTRA_BLUETOOTHDEVICE_UUID:Ljava/lang/String; = "android.bluetooth.device.extra.UUID"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final btUuidReceiver:Landroid/content/BroadcastReceiver;

.field private final callback:Lcom/google/glass/companion/UuidFetcher$Callback;

.field private context:Landroid/content/Context;

.field private final pendingAddresses:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private uuidReceiverRegistered:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 22
    const-class v0, Lcom/google/glass/companion/UuidFetcher;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/companion/UuidFetcher;->TAG:Ljava/lang/String;

    .line 35
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.bluetooth.device.action.UUID"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/glass/companion/UuidFetcher;->BT_UUID_RECEIVER_INTENT:Landroid/content/IntentFilter;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/glass/companion/UuidFetcher$Callback;)V
    .locals 1
    .parameter "context"
    .parameter "callback"

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Lcom/google/glass/companion/UuidFetcher$1;

    invoke-direct {v0, p0}, Lcom/google/glass/companion/UuidFetcher$1;-><init>(Lcom/google/glass/companion/UuidFetcher;)V

    iput-object v0, p0, Lcom/google/glass/companion/UuidFetcher;->btUuidReceiver:Landroid/content/BroadcastReceiver;

    .line 57
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/glass/companion/UuidFetcher;->uuidReceiverRegistered:Z

    .line 63
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/glass/companion/UuidFetcher;->pendingAddresses:Ljava/util/Set;

    .line 66
    iput-object p1, p0, Lcom/google/glass/companion/UuidFetcher;->context:Landroid/content/Context;

    .line 67
    iput-object p2, p0, Lcom/google/glass/companion/UuidFetcher;->callback:Lcom/google/glass/companion/UuidFetcher$Callback;

    .line 68
    return-void
.end method

.method static synthetic access$000(Lcom/google/glass/companion/UuidFetcher;)Ljava/util/Set;
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    iget-object v0, p0, Lcom/google/glass/companion/UuidFetcher;->pendingAddresses:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/google/glass/companion/UuidFetcher;->TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public fetch(Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;)Z
    .locals 3
    .parameter "device"

    .prologue
    const/4 v0, 0x0

    .line 98
    invoke-static {}, Lcom/google/glass/util/Assert;->assertUiThread()V

    .line 99
    if-nez p1, :cond_1

    .line 108
    :cond_0
    :goto_0
    return v0

    .line 103
    :cond_1
    iget-object v1, p0, Lcom/google/glass/companion/UuidFetcher;->pendingAddresses:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 106
    iget-object v0, p0, Lcom/google/glass/companion/UuidFetcher;->pendingAddresses:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 107
    invoke-virtual {p0, p1}, Lcom/google/glass/companion/UuidFetcher;->internalFetch(Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;)V

    .line 108
    const/4 v0, 0x1

    goto :goto_0
.end method

.method internalFetch(Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;)V
    .locals 0
    .parameter "device"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 113
    invoke-virtual {p1}, Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;->fetchUuidsWithSdp()V

    .line 114
    return-void
.end method

.method public onUuidReceived(Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;)V
    .locals 3
    .parameter "device"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 121
    iget-object v0, p0, Lcom/google/glass/companion/UuidFetcher;->pendingAddresses:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 122
    sget-object v0, Lcom/google/glass/companion/UuidFetcher;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "looking for addresses "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/companion/UuidFetcher;->pendingAddresses:Ljava/util/Set;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " but it got "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    :goto_0
    return-void

    .line 125
    :cond_0
    iget-object v0, p0, Lcom/google/glass/companion/UuidFetcher;->pendingAddresses:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 126
    iget-object v0, p0, Lcom/google/glass/companion/UuidFetcher;->callback:Lcom/google/glass/companion/UuidFetcher$Callback;

    invoke-interface {v0, p1}, Lcom/google/glass/companion/UuidFetcher$Callback;->onUuidFetchCallback(Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;)V

    goto :goto_0
.end method

.method public register()V
    .locals 4

    .prologue
    .line 72
    iget-object v1, p0, Lcom/google/glass/companion/UuidFetcher;->btUuidReceiver:Landroid/content/BroadcastReceiver;

    monitor-enter v1

    .line 73
    :try_start_0
    iget-boolean v0, p0, Lcom/google/glass/companion/UuidFetcher;->uuidReceiverRegistered:Z

    if-eqz v0, :cond_0

    .line 74
    monitor-exit v1

    .line 79
    :goto_0
    return-void

    .line 76
    :cond_0
    iget-object v0, p0, Lcom/google/glass/companion/UuidFetcher;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/glass/companion/UuidFetcher;->btUuidReceiver:Landroid/content/BroadcastReceiver;

    sget-object v3, Lcom/google/glass/companion/UuidFetcher;->BT_UUID_RECEIVER_INTENT:Landroid/content/IntentFilter;

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 77
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/glass/companion/UuidFetcher;->uuidReceiverRegistered:Z

    .line 78
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public unregister()V
    .locals 3

    .prologue
    .line 83
    iget-object v1, p0, Lcom/google/glass/companion/UuidFetcher;->btUuidReceiver:Landroid/content/BroadcastReceiver;

    monitor-enter v1

    .line 84
    :try_start_0
    iget-boolean v0, p0, Lcom/google/glass/companion/UuidFetcher;->uuidReceiverRegistered:Z

    if-nez v0, :cond_0

    .line 85
    monitor-exit v1

    .line 90
    :goto_0
    return-void

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/google/glass/companion/UuidFetcher;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/glass/companion/UuidFetcher;->btUuidReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 88
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/glass/companion/UuidFetcher;->uuidReceiverRegistered:Z

    .line 89
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
