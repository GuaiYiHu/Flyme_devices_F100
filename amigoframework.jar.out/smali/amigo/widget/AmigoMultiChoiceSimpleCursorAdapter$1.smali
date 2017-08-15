.class Lamigo/widget/AmigoMultiChoiceSimpleCursorAdapter$1;
.super Lamigo/widget/AmigoMultiChoiceAdapterHelper;
.source "AmigoMultiChoiceSimpleCursorAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lamigo/widget/AmigoMultiChoiceSimpleCursorAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lamigo/widget/AmigoMultiChoiceSimpleCursorAdapter;


# direct methods
.method constructor <init>(Lamigo/widget/AmigoMultiChoiceSimpleCursorAdapter;Landroid/widget/BaseAdapter;)V
    .locals 0
    .param p2, "x0"    # Landroid/widget/BaseAdapter;

    .prologue
    .line 38
    iput-object p1, p0, Lamigo/widget/AmigoMultiChoiceSimpleCursorAdapter$1;->this$0:Lamigo/widget/AmigoMultiChoiceSimpleCursorAdapter;

    invoke-direct {p0, p2}, Lamigo/widget/AmigoMultiChoiceAdapterHelper;-><init>(Landroid/widget/BaseAdapter;)V

    return-void
.end method


# virtual methods
.method protected positionToSelectionHandle(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 41
    iget-object v0, p0, Lamigo/widget/AmigoMultiChoiceSimpleCursorAdapter$1;->this$0:Lamigo/widget/AmigoMultiChoiceSimpleCursorAdapter;

    invoke-virtual {v0, p1}, Lamigo/widget/AmigoMultiChoiceSimpleCursorAdapter;->getItemId(I)J

    move-result-wide v0

    return-wide v0
.end method
