.class Lamigo/widget/AmigoAutoCompleteTextView$1;
.super Ljava/lang/Object;
.source "AmigoAutoCompleteTextView.java"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lamigo/widget/AmigoAutoCompleteTextView;->setOnDismissListener(Lamigo/widget/AmigoAutoCompleteTextView$OnDismissListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lamigo/widget/AmigoAutoCompleteTextView;

.field final synthetic val$dismissListener:Lamigo/widget/AmigoAutoCompleteTextView$OnDismissListener;


# direct methods
.method constructor <init>(Lamigo/widget/AmigoAutoCompleteTextView;Lamigo/widget/AmigoAutoCompleteTextView$OnDismissListener;)V
    .locals 0

    .prologue
    .line 606
    iput-object p1, p0, Lamigo/widget/AmigoAutoCompleteTextView$1;->this$0:Lamigo/widget/AmigoAutoCompleteTextView;

    iput-object p2, p0, Lamigo/widget/AmigoAutoCompleteTextView$1;->val$dismissListener:Lamigo/widget/AmigoAutoCompleteTextView$OnDismissListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 1

    .prologue
    .line 608
    iget-object v0, p0, Lamigo/widget/AmigoAutoCompleteTextView$1;->val$dismissListener:Lamigo/widget/AmigoAutoCompleteTextView$OnDismissListener;

    invoke-interface {v0}, Lamigo/widget/AmigoAutoCompleteTextView$OnDismissListener;->onDismiss()V

    .line 609
    return-void
.end method
