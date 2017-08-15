.class Lcom/amigo/internal/widget/AmigoTabContainerView$TabTouchListener;
.super Ljava/lang/Object;
.source "AmigoTabContainerView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amigo/internal/widget/AmigoTabContainerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TabTouchListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amigo/internal/widget/AmigoTabContainerView;


# direct methods
.method private constructor <init>(Lcom/amigo/internal/widget/AmigoTabContainerView;)V
    .locals 0

    .prologue
    .line 393
    iput-object p1, p0, Lcom/amigo/internal/widget/AmigoTabContainerView$TabTouchListener;->this$0:Lcom/amigo/internal/widget/AmigoTabContainerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/amigo/internal/widget/AmigoTabContainerView;Lcom/amigo/internal/widget/AmigoTabContainerView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/amigo/internal/widget/AmigoTabContainerView;
    .param p2, "x1"    # Lcom/amigo/internal/widget/AmigoTabContainerView$1;

    .prologue
    .line 393
    invoke-direct {p0, p1}, Lcom/amigo/internal/widget/AmigoTabContainerView$TabTouchListener;-><init>(Lcom/amigo/internal/widget/AmigoTabContainerView;)V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 396
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    packed-switch v0, :pswitch_data_0

    .line 406
    :cond_0
    iget-object v0, p0, Lcom/amigo/internal/widget/AmigoTabContainerView$TabTouchListener;->this$0:Lcom/amigo/internal/widget/AmigoTabContainerView;

    # getter for: Lcom/amigo/internal/widget/AmigoTabContainerView;->mClickable:Z
    invoke-static {v0}, Lcom/amigo/internal/widget/AmigoTabContainerView;->access$500(Lcom/amigo/internal/widget/AmigoTabContainerView;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 408
    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 398
    :pswitch_0
    iget-object v0, p0, Lcom/amigo/internal/widget/AmigoTabContainerView$TabTouchListener;->this$0:Lcom/amigo/internal/widget/AmigoTabContainerView;

    # getter for: Lcom/amigo/internal/widget/AmigoTabContainerView;->mClickable:Z
    invoke-static {v0}, Lcom/amigo/internal/widget/AmigoTabContainerView;->access$500(Lcom/amigo/internal/widget/AmigoTabContainerView;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 399
    const/4 v0, 0x1

    goto :goto_0

    .line 396
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
