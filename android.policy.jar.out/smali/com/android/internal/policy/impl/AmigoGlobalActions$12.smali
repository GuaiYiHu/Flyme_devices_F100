.class Lcom/android/internal/policy/impl/AmigoGlobalActions$12;
.super Ljava/lang/Object;
.source "AmigoGlobalActions.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/AmigoGlobalActions;->safeMode()V
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
    .line 539
    iput-object p1, p0, Lcom/android/internal/policy/impl/AmigoGlobalActions$12;->this$0:Lcom/android/internal/policy/impl/AmigoGlobalActions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 541
    iget-object v0, p0, Lcom/android/internal/policy/impl/AmigoGlobalActions$12;->this$0:Lcom/android/internal/policy/impl/AmigoGlobalActions;

    # getter for: Lcom/android/internal/policy/impl/AmigoGlobalActions;->mSafeModeDialog:Lamigo/app/AmigoAlertDialog;
    invoke-static {v0}, Lcom/android/internal/policy/impl/AmigoGlobalActions;->access$1800(Lcom/android/internal/policy/impl/AmigoGlobalActions;)Lamigo/app/AmigoAlertDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 542
    iget-object v0, p0, Lcom/android/internal/policy/impl/AmigoGlobalActions$12;->this$0:Lcom/android/internal/policy/impl/AmigoGlobalActions;

    const/4 v1, 0x0

    # setter for: Lcom/android/internal/policy/impl/AmigoGlobalActions;->mSafeModeDialog:Lamigo/app/AmigoAlertDialog;
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/AmigoGlobalActions;->access$1802(Lcom/android/internal/policy/impl/AmigoGlobalActions;Lamigo/app/AmigoAlertDialog;)Lamigo/app/AmigoAlertDialog;

    .line 544
    :cond_0
    return-void
.end method
