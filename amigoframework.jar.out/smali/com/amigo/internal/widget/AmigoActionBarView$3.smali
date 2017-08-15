.class Lcom/amigo/internal/widget/AmigoActionBarView$3;
.super Ljava/lang/Object;
.source "AmigoActionBarView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amigo/internal/widget/AmigoActionBarView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amigo/internal/widget/AmigoActionBarView;


# direct methods
.method constructor <init>(Lcom/amigo/internal/widget/AmigoActionBarView;)V
    .locals 0

    .prologue
    .line 143
    iput-object p1, p0, Lcom/amigo/internal/widget/AmigoActionBarView$3;->this$0:Lcom/amigo/internal/widget/AmigoActionBarView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 145
    iget-object v0, p0, Lcom/amigo/internal/widget/AmigoActionBarView$3;->this$0:Lcom/amigo/internal/widget/AmigoActionBarView;

    # getter for: Lcom/amigo/internal/widget/AmigoActionBarView;->mDisplayOptions:I
    invoke-static {v0}, Lcom/amigo/internal/widget/AmigoActionBarView;->access$200(Lcom/amigo/internal/widget/AmigoActionBarView;)I

    move-result v0

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 147
    iget-object v0, p0, Lcom/amigo/internal/widget/AmigoActionBarView$3;->this$0:Lcom/amigo/internal/widget/AmigoActionBarView;

    # getter for: Lcom/amigo/internal/widget/AmigoActionBarView;->mBackClickListener:Landroid/view/View$OnClickListener;
    invoke-static {v0}, Lcom/amigo/internal/widget/AmigoActionBarView;->access$300(Lcom/amigo/internal/widget/AmigoActionBarView;)Landroid/view/View$OnClickListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 148
    iget-object v0, p0, Lcom/amigo/internal/widget/AmigoActionBarView$3;->this$0:Lcom/amigo/internal/widget/AmigoActionBarView;

    # getter for: Lcom/amigo/internal/widget/AmigoActionBarView;->mBackClickListener:Landroid/view/View$OnClickListener;
    invoke-static {v0}, Lcom/amigo/internal/widget/AmigoActionBarView;->access$300(Lcom/amigo/internal/widget/AmigoActionBarView;)Landroid/view/View$OnClickListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 160
    :cond_0
    :goto_0
    return-void

    .line 150
    :cond_1
    iget-object v0, p0, Lcom/amigo/internal/widget/AmigoActionBarView$3;->this$0:Lcom/amigo/internal/widget/AmigoActionBarView;

    # getter for: Lcom/amigo/internal/widget/AmigoActionBarView;->mActivity:Lamigo/app/AmigoActivity;
    invoke-static {v0}, Lcom/amigo/internal/widget/AmigoActionBarView;->access$400(Lcom/amigo/internal/widget/AmigoActionBarView;)Lamigo/app/AmigoActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/amigo/internal/widget/AmigoActionBarView$3;->this$0:Lcom/amigo/internal/widget/AmigoActionBarView;

    # getter for: Lcom/amigo/internal/widget/AmigoActionBarView;->mActivity:Lamigo/app/AmigoActivity;
    invoke-static {v0}, Lcom/amigo/internal/widget/AmigoActionBarView;->access$400(Lcom/amigo/internal/widget/AmigoActionBarView;)Lamigo/app/AmigoActivity;

    move-result-object v0

    invoke-virtual {v0}, Lamigo/app/AmigoActivity;->finish()V

    goto :goto_0

    .line 157
    :cond_2
    iget-object v0, p0, Lcom/amigo/internal/widget/AmigoActionBarView$3;->this$0:Lcom/amigo/internal/widget/AmigoActionBarView;

    iget-object v0, v0, Lcom/amigo/internal/widget/AmigoActionBarView;->mWindowCallback:Landroid/view/Window$Callback;

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/amigo/internal/widget/AmigoActionBarView$3;->this$0:Lcom/amigo/internal/widget/AmigoActionBarView;

    iget-object v0, v0, Lcom/amigo/internal/widget/AmigoActionBarView;->mWindowCallback:Landroid/view/Window$Callback;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/amigo/internal/widget/AmigoActionBarView$3;->this$0:Lcom/amigo/internal/widget/AmigoActionBarView;

    # getter for: Lcom/amigo/internal/widget/AmigoActionBarView;->mLogoNavItem:Lcom/android/internal/view/menu/ActionMenuItem;
    invoke-static {v2}, Lcom/amigo/internal/widget/AmigoActionBarView;->access$500(Lcom/amigo/internal/widget/AmigoActionBarView;)Lcom/android/internal/view/menu/ActionMenuItem;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/view/Window$Callback;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    goto :goto_0
.end method
