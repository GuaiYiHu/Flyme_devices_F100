.class Lcom/android/internal/policy/impl/AmigoGlobalActions$16;
.super Ljava/lang/Object;
.source "AmigoGlobalActions.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/AmigoGlobalActions;->runShutAnim(Landroid/widget/ImageView;Landroid/widget/ImageView;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/AmigoGlobalActions;

.field final synthetic val$animation:Landroid/graphics/drawable/AnimationDrawable;

.field final synthetic val$rotateAnimation:Landroid/view/animation/Animation;

.field final synthetic val$rotateView:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/AmigoGlobalActions;Landroid/graphics/drawable/AnimationDrawable;Landroid/widget/ImageView;Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 696
    iput-object p1, p0, Lcom/android/internal/policy/impl/AmigoGlobalActions$16;->this$0:Lcom/android/internal/policy/impl/AmigoGlobalActions;

    iput-object p2, p0, Lcom/android/internal/policy/impl/AmigoGlobalActions$16;->val$animation:Landroid/graphics/drawable/AnimationDrawable;

    iput-object p3, p0, Lcom/android/internal/policy/impl/AmigoGlobalActions$16;->val$rotateView:Landroid/widget/ImageView;

    iput-object p4, p0, Lcom/android/internal/policy/impl/AmigoGlobalActions$16;->val$rotateAnimation:Landroid/view/animation/Animation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 698
    iget-object v0, p0, Lcom/android/internal/policy/impl/AmigoGlobalActions$16;->val$animation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 699
    iget-object v0, p0, Lcom/android/internal/policy/impl/AmigoGlobalActions$16;->val$rotateView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/AmigoGlobalActions$16;->val$rotateAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 700
    return-void
.end method
