.class Lcom/google/glass/home/settings/WifiSettingsItemView$6;
.super Ljava/lang/Object;
.source "WifiSettingsItemView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/home/settings/WifiSettingsItemView;->onUnload()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/home/settings/WifiSettingsItemView;


# direct methods
.method constructor <init>(Lcom/google/glass/home/settings/WifiSettingsItemView;)V
    .locals 0
    .parameter

    .prologue
    .line 332
    iput-object p1, p0, Lcom/google/glass/home/settings/WifiSettingsItemView$6;->this$0:Lcom/google/glass/home/settings/WifiSettingsItemView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 335
    iget-object v0, p0, Lcom/google/glass/home/settings/WifiSettingsItemView$6;->this$0:Lcom/google/glass/home/settings/WifiSettingsItemView;

    #getter for: Lcom/google/glass/home/settings/WifiSettingsItemView;->statusReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;
    invoke-static {v0}, Lcom/google/glass/home/settings/WifiSettingsItemView;->access$900(Lcom/google/glass/home/settings/WifiSettingsItemView;)Lcom/google/glass/util/SafeBroadcastReceiver;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/home/settings/WifiSettingsItemView$6;->this$0:Lcom/google/glass/home/settings/WifiSettingsItemView;

    invoke-virtual {v1}, Lcom/google/glass/home/settings/WifiSettingsItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/glass/util/SafeBroadcastReceiver;->unregister(Landroid/content/Context;)V

    .line 336
    return-void
.end method
