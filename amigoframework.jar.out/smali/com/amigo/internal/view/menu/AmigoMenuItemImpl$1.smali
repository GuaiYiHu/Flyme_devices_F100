.class Lcom/amigo/internal/view/menu/AmigoMenuItemImpl$1;
.super Ljava/lang/Object;
.source "AmigoMenuItemImpl.java"

# interfaces
.implements Landroid/view/ActionProvider$VisibilityListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;->setActionProvider(Landroid/view/ActionProvider;)Landroid/view/MenuItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;


# direct methods
.method constructor <init>(Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;)V
    .locals 0

    .prologue
    .line 593
    iput-object p1, p0, Lcom/amigo/internal/view/menu/AmigoMenuItemImpl$1;->this$0:Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActionProviderVisibilityChanged(Z)V
    .locals 2
    .param p1, "isVisible"    # Z

    .prologue
    .line 596
    iget-object v0, p0, Lcom/amigo/internal/view/menu/AmigoMenuItemImpl$1;->this$0:Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;

    # getter for: Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;->mMenu:Lcom/amigo/internal/view/menu/AmigoMenuBuilder;
    invoke-static {v0}, Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;->access$000(Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;)Lcom/amigo/internal/view/menu/AmigoMenuBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/amigo/internal/view/menu/AmigoMenuItemImpl$1;->this$0:Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;

    invoke-virtual {v0, v1}, Lcom/amigo/internal/view/menu/AmigoMenuBuilder;->onItemVisibleChanged(Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;)V

    .line 597
    return-void
.end method
