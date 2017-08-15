.class Lamigo/widget/AmigoEditModeView$2;
.super Ljava/lang/Object;
.source "AmigoEditModeView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lamigo/widget/AmigoEditModeView;->initClickListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lamigo/widget/AmigoEditModeView;


# direct methods
.method constructor <init>(Lamigo/widget/AmigoEditModeView;)V
    .locals 0

    .prologue
    .line 123
    iput-object p1, p0, Lamigo/widget/AmigoEditModeView$2;->this$0:Lamigo/widget/AmigoEditModeView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 127
    iget-object v0, p0, Lamigo/widget/AmigoEditModeView$2;->this$0:Lamigo/widget/AmigoEditModeView;

    # getter for: Lamigo/widget/AmigoEditModeView;->mClickListener:Lamigo/widget/AmigoEditModeView$EditModeClickListener;
    invoke-static {v0}, Lamigo/widget/AmigoEditModeView;->access$000(Lamigo/widget/AmigoEditModeView;)Lamigo/widget/AmigoEditModeView$EditModeClickListener;

    move-result-object v0

    if-nez v0, :cond_0

    .line 131
    :goto_0
    return-void

    .line 130
    :cond_0
    iget-object v0, p0, Lamigo/widget/AmigoEditModeView$2;->this$0:Lamigo/widget/AmigoEditModeView;

    # getter for: Lamigo/widget/AmigoEditModeView;->mClickListener:Lamigo/widget/AmigoEditModeView$EditModeClickListener;
    invoke-static {v0}, Lamigo/widget/AmigoEditModeView;->access$000(Lamigo/widget/AmigoEditModeView;)Lamigo/widget/AmigoEditModeView$EditModeClickListener;

    move-result-object v0

    invoke-interface {v0}, Lamigo/widget/AmigoEditModeView$EditModeClickListener;->rightBtnClick()V

    goto :goto_0
.end method
