.class Lamigo/widget/AmigoSmartFullScreenLayout$1;
.super Ljava/lang/Object;
.source "AmigoSmartFullScreenLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lamigo/widget/AmigoSmartFullScreenLayout;->initPositiveBtn()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lamigo/widget/AmigoSmartFullScreenLayout;


# direct methods
.method constructor <init>(Lamigo/widget/AmigoSmartFullScreenLayout;)V
    .locals 0

    .prologue
    .line 126
    iput-object p1, p0, Lamigo/widget/AmigoSmartFullScreenLayout$1;->this$0:Lamigo/widget/AmigoSmartFullScreenLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 130
    iget-object v0, p0, Lamigo/widget/AmigoSmartFullScreenLayout$1;->this$0:Lamigo/widget/AmigoSmartFullScreenLayout;

    # invokes: Lamigo/widget/AmigoSmartFullScreenLayout;->onClickEvent(Landroid/view/View;)V
    invoke-static {v0, p1}, Lamigo/widget/AmigoSmartFullScreenLayout;->access$000(Lamigo/widget/AmigoSmartFullScreenLayout;Landroid/view/View;)V

    .line 131
    return-void
.end method
