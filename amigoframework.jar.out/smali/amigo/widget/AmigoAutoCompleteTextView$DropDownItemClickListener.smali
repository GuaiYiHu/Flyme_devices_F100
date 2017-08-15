.class Lamigo/widget/AmigoAutoCompleteTextView$DropDownItemClickListener;
.super Ljava/lang/Object;
.source "AmigoAutoCompleteTextView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lamigo/widget/AmigoAutoCompleteTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DropDownItemClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lamigo/widget/AmigoAutoCompleteTextView;


# direct methods
.method private constructor <init>(Lamigo/widget/AmigoAutoCompleteTextView;)V
    .locals 0

    .prologue
    .line 1209
    iput-object p1, p0, Lamigo/widget/AmigoAutoCompleteTextView$DropDownItemClickListener;->this$0:Lamigo/widget/AmigoAutoCompleteTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lamigo/widget/AmigoAutoCompleteTextView;Lamigo/widget/AmigoAutoCompleteTextView$1;)V
    .locals 0
    .param p1, "x0"    # Lamigo/widget/AmigoAutoCompleteTextView;
    .param p2, "x1"    # Lamigo/widget/AmigoAutoCompleteTextView$1;

    .prologue
    .line 1209
    invoke-direct {p0, p1}, Lamigo/widget/AmigoAutoCompleteTextView$DropDownItemClickListener;-><init>(Lamigo/widget/AmigoAutoCompleteTextView;)V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .param p1, "parent"    # Landroid/widget/AdapterView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .prologue
    .line 1211
    iget-object v0, p0, Lamigo/widget/AmigoAutoCompleteTextView$DropDownItemClickListener;->this$0:Lamigo/widget/AmigoAutoCompleteTextView;

    # invokes: Lamigo/widget/AmigoAutoCompleteTextView;->performCompletion(Landroid/view/View;IJ)V
    invoke-static {v0, p2, p3, p4, p5}, Lamigo/widget/AmigoAutoCompleteTextView;->access$500(Lamigo/widget/AmigoAutoCompleteTextView;Landroid/view/View;IJ)V

    .line 1212
    return-void
.end method
