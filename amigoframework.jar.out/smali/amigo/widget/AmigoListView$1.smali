.class Lamigo/widget/AmigoListView$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "AmigoListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lamigo/widget/AmigoListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lamigo/widget/AmigoListView;


# direct methods
.method constructor <init>(Lamigo/widget/AmigoListView;)V
    .locals 0

    .prologue
    .line 116
    iput-object p1, p0, Lamigo/widget/AmigoListView$1;->this$0:Lamigo/widget/AmigoListView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "distanceX"    # F
    .param p4, "distanceY"    # F

    .prologue
    .line 121
    iget-object v0, p0, Lamigo/widget/AmigoListView$1;->this$0:Lamigo/widget/AmigoListView;

    # getter for: Lamigo/widget/AmigoListView;->mScrollListener:Lamigo/widget/AmigoListView$MultiChoiceScrollListener;
    invoke-static {v0}, Lamigo/widget/AmigoListView;->access$000(Lamigo/widget/AmigoListView;)Lamigo/widget/AmigoListView$MultiChoiceScrollListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lamigo/widget/AmigoListView$1;->this$0:Lamigo/widget/AmigoListView;

    # getter for: Lamigo/widget/AmigoListView;->mScrollListener:Lamigo/widget/AmigoListView$MultiChoiceScrollListener;
    invoke-static {v0}, Lamigo/widget/AmigoListView;->access$000(Lamigo/widget/AmigoListView;)Lamigo/widget/AmigoListView$MultiChoiceScrollListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lamigo/widget/AmigoListView$MultiChoiceScrollListener;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    .line 124
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v0

    return v0
.end method
