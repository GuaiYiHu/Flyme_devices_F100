.class Lamigo/widget/AmigoExpandableListView$1;
.super Ljava/lang/Object;
.source "AmigoExpandableListView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lamigo/widget/AmigoExpandableListView;->collapseAnimation(Lamigo/widget/AmigoExpandableListConnector$PositionMetadata;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lamigo/widget/AmigoExpandableListView;

.field final synthetic val$posMetadata:Lamigo/widget/AmigoExpandableListConnector$PositionMetadata;


# direct methods
.method constructor <init>(Lamigo/widget/AmigoExpandableListView;Lamigo/widget/AmigoExpandableListConnector$PositionMetadata;)V
    .locals 0

    .prologue
    .line 1416
    iput-object p1, p0, Lamigo/widget/AmigoExpandableListView$1;->this$0:Lamigo/widget/AmigoExpandableListView;

    iput-object p2, p0, Lamigo/widget/AmigoExpandableListView$1;->val$posMetadata:Lamigo/widget/AmigoExpandableListConnector$PositionMetadata;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "arg0"    # Landroid/animation/Animator;

    .prologue
    .line 1434
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "arg0"    # Landroid/animation/Animator;

    .prologue
    .line 1428
    const-string v0, "AmigoExpandListView"

    const-string v1, "animateDismiss onAnimationEnd"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1429
    iget-object v0, p0, Lamigo/widget/AmigoExpandableListView$1;->this$0:Lamigo/widget/AmigoExpandableListView;

    iget-object v1, p0, Lamigo/widget/AmigoExpandableListView$1;->val$posMetadata:Lamigo/widget/AmigoExpandableListConnector$PositionMetadata;

    # invokes: Lamigo/widget/AmigoExpandableListView;->startCollapseGroup(Lamigo/widget/AmigoExpandableListConnector$PositionMetadata;)V
    invoke-static {v0, v1}, Lamigo/widget/AmigoExpandableListView;->access$100(Lamigo/widget/AmigoExpandableListView;Lamigo/widget/AmigoExpandableListConnector$PositionMetadata;)V

    .line 1430
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "arg0"    # Landroid/animation/Animator;

    .prologue
    .line 1424
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "arg0"    # Landroid/animation/Animator;

    .prologue
    .line 1420
    return-void
.end method
