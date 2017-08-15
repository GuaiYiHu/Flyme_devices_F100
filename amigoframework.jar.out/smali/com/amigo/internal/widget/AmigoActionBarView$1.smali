.class Lcom/amigo/internal/widget/AmigoActionBarView$1;
.super Ljava/lang/Object;
.source "AmigoActionBarView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


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
    .line 121
    iput-object p1, p0, Lcom/amigo/internal/widget/AmigoActionBarView$1;->this$0:Lcom/amigo/internal/widget/AmigoActionBarView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .param p1, "parent"    # Landroid/widget/AdapterView;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .prologue
    .line 123
    iget-object v0, p0, Lcom/amigo/internal/widget/AmigoActionBarView$1;->this$0:Lcom/amigo/internal/widget/AmigoActionBarView;

    # getter for: Lcom/amigo/internal/widget/AmigoActionBarView;->mCallback:Lamigo/app/AmigoActionBar$OnNavigationListener;
    invoke-static {v0}, Lcom/amigo/internal/widget/AmigoActionBarView;->access$000(Lcom/amigo/internal/widget/AmigoActionBarView;)Lamigo/app/AmigoActionBar$OnNavigationListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/amigo/internal/widget/AmigoActionBarView$1;->this$0:Lcom/amigo/internal/widget/AmigoActionBarView;

    # getter for: Lcom/amigo/internal/widget/AmigoActionBarView;->mCallback:Lamigo/app/AmigoActionBar$OnNavigationListener;
    invoke-static {v0}, Lcom/amigo/internal/widget/AmigoActionBarView;->access$000(Lcom/amigo/internal/widget/AmigoActionBarView;)Lamigo/app/AmigoActionBar$OnNavigationListener;

    move-result-object v0

    invoke-interface {v0, p3, p4, p5}, Lamigo/app/AmigoActionBar$OnNavigationListener;->onNavigationItemSelected(IJ)Z

    .line 126
    :cond_0
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .param p1, "parent"    # Landroid/widget/AdapterView;

    .prologue
    .line 130
    return-void
.end method
