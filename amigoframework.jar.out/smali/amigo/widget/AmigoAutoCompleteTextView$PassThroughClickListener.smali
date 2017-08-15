.class Lamigo/widget/AmigoAutoCompleteTextView$PassThroughClickListener;
.super Ljava/lang/Object;
.source "AmigoAutoCompleteTextView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lamigo/widget/AmigoAutoCompleteTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PassThroughClickListener"
.end annotation


# instance fields
.field private mWrapped:Landroid/view/View$OnClickListener;

.field final synthetic this$0:Lamigo/widget/AmigoAutoCompleteTextView;


# direct methods
.method private constructor <init>(Lamigo/widget/AmigoAutoCompleteTextView;)V
    .locals 0

    .prologue
    .line 1261
    iput-object p1, p0, Lamigo/widget/AmigoAutoCompleteTextView$PassThroughClickListener;->this$0:Lamigo/widget/AmigoAutoCompleteTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lamigo/widget/AmigoAutoCompleteTextView;Lamigo/widget/AmigoAutoCompleteTextView$1;)V
    .locals 0
    .param p1, "x0"    # Lamigo/widget/AmigoAutoCompleteTextView;
    .param p2, "x1"    # Lamigo/widget/AmigoAutoCompleteTextView$1;

    .prologue
    .line 1261
    invoke-direct {p0, p1}, Lamigo/widget/AmigoAutoCompleteTextView$PassThroughClickListener;-><init>(Lamigo/widget/AmigoAutoCompleteTextView;)V

    return-void
.end method

.method static synthetic access$302(Lamigo/widget/AmigoAutoCompleteTextView$PassThroughClickListener;Landroid/view/View$OnClickListener;)Landroid/view/View$OnClickListener;
    .locals 0
    .param p0, "x0"    # Lamigo/widget/AmigoAutoCompleteTextView$PassThroughClickListener;
    .param p1, "x1"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 1261
    iput-object p1, p0, Lamigo/widget/AmigoAutoCompleteTextView$PassThroughClickListener;->mWrapped:Landroid/view/View$OnClickListener;

    return-object p1
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1267
    iget-object v0, p0, Lamigo/widget/AmigoAutoCompleteTextView$PassThroughClickListener;->this$0:Lamigo/widget/AmigoAutoCompleteTextView;

    # invokes: Lamigo/widget/AmigoAutoCompleteTextView;->onClickImpl()V
    invoke-static {v0}, Lamigo/widget/AmigoAutoCompleteTextView;->access$600(Lamigo/widget/AmigoAutoCompleteTextView;)V

    .line 1269
    iget-object v0, p0, Lamigo/widget/AmigoAutoCompleteTextView$PassThroughClickListener;->mWrapped:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lamigo/widget/AmigoAutoCompleteTextView$PassThroughClickListener;->mWrapped:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 1270
    :cond_0
    return-void
.end method
