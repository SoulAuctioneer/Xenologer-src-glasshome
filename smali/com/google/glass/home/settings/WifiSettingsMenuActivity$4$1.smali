.class Lcom/google/glass/home/settings/WifiSettingsMenuActivity$4$1;
.super Lcom/google/glass/widget/MessageDialog$SimpleListener;
.source "WifiSettingsMenuActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/home/settings/WifiSettingsMenuActivity$4;->updateDialog(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/glass/home/settings/WifiSettingsMenuActivity$4;


# direct methods
.method constructor <init>(Lcom/google/glass/home/settings/WifiSettingsMenuActivity$4;)V
    .locals 0
    .parameter

    .prologue
    .line 333
    iput-object p1, p0, Lcom/google/glass/home/settings/WifiSettingsMenuActivity$4$1;->this$1:Lcom/google/glass/home/settings/WifiSettingsMenuActivity$4;

    invoke-direct {p0}, Lcom/google/glass/widget/MessageDialog$SimpleListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDone()V
    .locals 1

    .prologue
    .line 337
    iget-object v0, p0, Lcom/google/glass/home/settings/WifiSettingsMenuActivity$4$1;->this$1:Lcom/google/glass/home/settings/WifiSettingsMenuActivity$4;

    iget-object v0, v0, Lcom/google/glass/home/settings/WifiSettingsMenuActivity$4;->this$0:Lcom/google/glass/home/settings/WifiSettingsMenuActivity;

    invoke-virtual {v0}, Lcom/google/glass/home/settings/WifiSettingsMenuActivity;->closeOptionsMenu()V

    .line 338
    iget-object v0, p0, Lcom/google/glass/home/settings/WifiSettingsMenuActivity$4$1;->this$1:Lcom/google/glass/home/settings/WifiSettingsMenuActivity$4;

    iget-object v0, v0, Lcom/google/glass/home/settings/WifiSettingsMenuActivity$4;->this$0:Lcom/google/glass/home/settings/WifiSettingsMenuActivity;

    #calls: Lcom/google/glass/home/settings/WifiSettingsMenuActivity;->goBackToTimeline()V
    invoke-static {v0}, Lcom/google/glass/home/settings/WifiSettingsMenuActivity;->access$300(Lcom/google/glass/home/settings/WifiSettingsMenuActivity;)V

    .line 339
    return-void
.end method
