.class Lcom/android/internal/policy/impl/AmigoGlobalActions$11;
.super Ljava/lang/Object;
.source "AmigoGlobalActions.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 512
    iput-object p1, p0, Lcom/android/internal/policy/impl/AmigoGlobalActions$11;->this$0:Lcom/android/internal/policy/impl/AmigoGlobalActions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 515
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    sget-object v1, Lcom/android/internal/policy/impl/AmigoBlurHelper;->mBlur:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 516
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    iget-object v1, p0, Lcom/android/internal/policy/impl/AmigoGlobalActions$11;->this$0:Lcom/android/internal/policy/impl/AmigoGlobalActions;

    # getter for: Lcom/android/internal/policy/impl/AmigoGlobalActions;->mTopLayout:Landroid/widget/RelativeLayout;
    invoke-static {v1}, Lcom/android/internal/policy/impl/AmigoGlobalActions;->access$1700(Lcom/android/internal/policy/impl/AmigoGlobalActions;)Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 517
    return-void
.end method
