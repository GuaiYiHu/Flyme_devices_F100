.class Lamigo/app/AmigoActivity$3;
.super Ljava/lang/Object;
.source "AmigoActivity.java"

# interfaces
.implements Lamigo/widget/AmigoMagicBar$OnMagicBarVisibleChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lamigo/app/AmigoActivity;->setContentViewWithAmigoActionBar(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lamigo/app/AmigoActivity;


# direct methods
.method constructor <init>(Lamigo/app/AmigoActivity;)V
    .locals 0

    .prologue
    .line 666
    iput-object p1, p0, Lamigo/app/AmigoActivity$3;->this$0:Lamigo/app/AmigoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMagicBarVisibleChanged(I)V
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    .line 669
    iget-object v0, p0, Lamigo/app/AmigoActivity$3;->this$0:Lamigo/app/AmigoActivity;

    # getter for: Lamigo/app/AmigoActivity;->mEmptyLayout:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lamigo/app/AmigoActivity;->access$000(Lamigo/app/AmigoActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 670
    return-void
.end method
