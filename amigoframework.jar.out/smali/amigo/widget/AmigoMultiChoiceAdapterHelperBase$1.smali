.class Lamigo/widget/AmigoMultiChoiceAdapterHelperBase$1;
.super Ljava/lang/Object;
.source "AmigoMultiChoiceAdapterHelperBase.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lamigo/widget/AmigoMultiChoiceAdapterHelperBase;->getActionModeCustomView()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lamigo/widget/AmigoMultiChoiceAdapterHelperBase;


# direct methods
.method constructor <init>(Lamigo/widget/AmigoMultiChoiceAdapterHelperBase;)V
    .locals 0

    .prologue
    .line 100
    iput-object p1, p0, Lamigo/widget/AmigoMultiChoiceAdapterHelperBase$1;->this$0:Lamigo/widget/AmigoMultiChoiceAdapterHelperBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 104
    iget-object v0, p0, Lamigo/widget/AmigoMultiChoiceAdapterHelperBase$1;->this$0:Lamigo/widget/AmigoMultiChoiceAdapterHelperBase;

    # invokes: Lamigo/widget/AmigoMultiChoiceAdapterHelperBase;->doClickSelectAllBtn()V
    invoke-static {v0}, Lamigo/widget/AmigoMultiChoiceAdapterHelperBase;->access$000(Lamigo/widget/AmigoMultiChoiceAdapterHelperBase;)V

    .line 105
    return-void
.end method
