.class Lcom/amigo/internal/widget/AmigoActionBarContextView$1;
.super Ljava/lang/Object;
.source "AmigoActionBarContextView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amigo/internal/widget/AmigoActionBarContextView;->initForMode(Landroid/view/ActionMode;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amigo/internal/widget/AmigoActionBarContextView;

.field final synthetic val$mode:Landroid/view/ActionMode;


# direct methods
.method constructor <init>(Lcom/amigo/internal/widget/AmigoActionBarContextView;Landroid/view/ActionMode;)V
    .locals 0

    .prologue
    .line 210
    iput-object p1, p0, Lcom/amigo/internal/widget/AmigoActionBarContextView$1;->this$0:Lcom/amigo/internal/widget/AmigoActionBarContextView;

    iput-object p2, p0, Lcom/amigo/internal/widget/AmigoActionBarContextView$1;->val$mode:Landroid/view/ActionMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 212
    iget-object v0, p0, Lcom/amigo/internal/widget/AmigoActionBarContextView$1;->val$mode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 213
    return-void
.end method
