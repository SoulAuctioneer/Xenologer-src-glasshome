.class Lcom/google/glass/home/timeline/active/GuardPhraseView$4$1;
.super Ljava/lang/Object;
.source "GuardPhraseView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/home/timeline/active/GuardPhraseView$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/glass/home/timeline/active/GuardPhraseView$4;

.field final synthetic val$inCallOrCallSetup:Z


# direct methods
.method constructor <init>(Lcom/google/glass/home/timeline/active/GuardPhraseView$4;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 139
    iput-object p1, p0, Lcom/google/glass/home/timeline/active/GuardPhraseView$4$1;->this$1:Lcom/google/glass/home/timeline/active/GuardPhraseView$4;

    iput-boolean p2, p0, Lcom/google/glass/home/timeline/active/GuardPhraseView$4$1;->val$inCallOrCallSetup:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 144
    iget-boolean v0, p0, Lcom/google/glass/home/timeline/active/GuardPhraseView$4$1;->val$inCallOrCallSetup:Z

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/google/glass/home/timeline/active/GuardPhraseView$4$1;->this$1:Lcom/google/glass/home/timeline/active/GuardPhraseView$4;

    iget-object v0, v0, Lcom/google/glass/home/timeline/active/GuardPhraseView$4;->this$0:Lcom/google/glass/home/timeline/active/GuardPhraseView;

    sget v1, Lcom/google/glass/home/R$string;->phone_call_in_call:I

    invoke-virtual {v0, v1}, Lcom/google/glass/home/timeline/active/GuardPhraseView;->setTip(I)V

    .line 149
    :goto_0
    return-void

    .line 147
    :cond_0
    iget-object v0, p0, Lcom/google/glass/home/timeline/active/GuardPhraseView$4$1;->this$1:Lcom/google/glass/home/timeline/active/GuardPhraseView$4;

    iget-object v0, v0, Lcom/google/glass/home/timeline/active/GuardPhraseView$4;->this$0:Lcom/google/glass/home/timeline/active/GuardPhraseView;

    sget v1, Lcom/google/glass/home/R$string;->guard_phrase_hint:I

    invoke-virtual {v0, v1}, Lcom/google/glass/home/timeline/active/GuardPhraseView;->setTip(I)V

    goto :goto_0
.end method
