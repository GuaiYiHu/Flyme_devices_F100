.class Lamigo/app/AmigoActivity$2;
.super Ljava/lang/Object;
.source "AmigoActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lamigo/app/AmigoActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lamigo/app/AmigoActivity;

.field final synthetic val$subMenu:Landroid/view/SubMenu;

.field final synthetic val$subMenuIds:[I


# direct methods
.method constructor <init>(Lamigo/app/AmigoActivity;Landroid/view/SubMenu;[I)V
    .locals 0

    .prologue
    .line 266
    iput-object p1, p0, Lamigo/app/AmigoActivity$2;->this$0:Lamigo/app/AmigoActivity;

    iput-object p2, p0, Lamigo/app/AmigoActivity$2;->val$subMenu:Landroid/view/SubMenu;

    iput-object p3, p0, Lamigo/app/AmigoActivity$2;->val$subMenuIds:[I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 270
    iget-object v0, p0, Lamigo/app/AmigoActivity$2;->this$0:Lamigo/app/AmigoActivity;

    iget-object v1, p0, Lamigo/app/AmigoActivity$2;->val$subMenu:Landroid/view/SubMenu;

    iget-object v2, p0, Lamigo/app/AmigoActivity$2;->val$subMenuIds:[I

    aget v2, v2, p2

    invoke-interface {v1, v2}, Landroid/view/SubMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Lamigo/app/AmigoActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 271
    return-void
.end method
