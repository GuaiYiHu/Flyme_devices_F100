.class Lcom/android/internal/policy/impl/AmigoGlobalActions$10;
.super Ljava/lang/Object;
.source "AmigoGlobalActions.java"

# interfaces
.implements Lcom/android/internal/policy/impl/AmigoBlurHelper$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/AmigoGlobalActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/AmigoGlobalActions;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/AmigoGlobalActions;)V
    .locals 0

    .prologue
    .line 497
    iput-object p1, p0, Lcom/android/internal/policy/impl/AmigoGlobalActions$10;->this$0:Lcom/android/internal/policy/impl/AmigoGlobalActions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public completeBlur()V
    .locals 1

    .prologue
    .line 500
    iget-object v0, p0, Lcom/android/internal/policy/impl/AmigoGlobalActions$10;->this$0:Lcom/android/internal/policy/impl/AmigoGlobalActions;

    # invokes: Lcom/android/internal/policy/impl/AmigoGlobalActions;->updateBackground()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/AmigoGlobalActions;->access$1600(Lcom/android/internal/policy/impl/AmigoGlobalActions;)V

    .line 501
    return-void
.end method
