.class Lcom/amigo/internal/app/AmigoAlertController$AlertParams$2;
.super Landroid/widget/CursorAdapter;
.source "AmigoAlertController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amigo/internal/app/AmigoAlertController$AlertParams;->createListView(Lcom/amigo/internal/app/AmigoAlertController;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final mIsCheckedIndex:I

.field private final mLabelIndex:I

.field final synthetic this$0:Lcom/amigo/internal/app/AmigoAlertController$AlertParams;

.field final synthetic val$dialog:Lcom/amigo/internal/app/AmigoAlertController;

.field final synthetic val$listView:Lcom/amigo/internal/app/AmigoAlertController$RecycleListView;


# direct methods
.method constructor <init>(Lcom/amigo/internal/app/AmigoAlertController$AlertParams;Landroid/content/Context;Landroid/database/Cursor;ZLcom/amigo/internal/app/AmigoAlertController$RecycleListView;Lcom/amigo/internal/app/AmigoAlertController;)V
    .locals 2
    .param p2, "x0"    # Landroid/content/Context;
    .param p3, "x1"    # Landroid/database/Cursor;
    .param p4, "x2"    # Z

    .prologue
    .line 1117
    iput-object p1, p0, Lcom/amigo/internal/app/AmigoAlertController$AlertParams$2;->this$0:Lcom/amigo/internal/app/AmigoAlertController$AlertParams;

    iput-object p5, p0, Lcom/amigo/internal/app/AmigoAlertController$AlertParams$2;->val$listView:Lcom/amigo/internal/app/AmigoAlertController$RecycleListView;

    iput-object p6, p0, Lcom/amigo/internal/app/AmigoAlertController$AlertParams$2;->val$dialog:Lcom/amigo/internal/app/AmigoAlertController;

    invoke-direct {p0, p2, p3, p4}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V

    .line 1122
    invoke-virtual {p0}, Lcom/amigo/internal/app/AmigoAlertController$AlertParams$2;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 1123
    .local v0, "cursor":Landroid/database/Cursor;
    iget-object v1, p0, Lcom/amigo/internal/app/AmigoAlertController$AlertParams$2;->this$0:Lcom/amigo/internal/app/AmigoAlertController$AlertParams;

    iget-object v1, v1, Lcom/amigo/internal/app/AmigoAlertController$AlertParams;->mLabelColumn:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/amigo/internal/app/AmigoAlertController$AlertParams$2;->mLabelIndex:I

    .line 1124
    iget-object v1, p0, Lcom/amigo/internal/app/AmigoAlertController$AlertParams$2;->this$0:Lcom/amigo/internal/app/AmigoAlertController$AlertParams;

    iget-object v1, v1, Lcom/amigo/internal/app/AmigoAlertController$AlertParams;->mIsCheckedColumn:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/amigo/internal/app/AmigoAlertController$AlertParams$2;->mIsCheckedIndex:I

    .line 1125
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v1, 0x1

    .line 1129
    const v2, 0x90b0038

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckedTextView;

    .line 1130
    .local v0, "text":Landroid/widget/CheckedTextView;
    iget v2, p0, Lcom/amigo/internal/app/AmigoAlertController$AlertParams$2;->mLabelIndex:I

    invoke-interface {p3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/CheckedTextView;->setText(Ljava/lang/CharSequence;)V

    .line 1132
    iget-object v2, p0, Lcom/amigo/internal/app/AmigoAlertController$AlertParams$2;->val$listView:Lcom/amigo/internal/app/AmigoAlertController$RecycleListView;

    invoke-interface {p3}, Landroid/database/Cursor;->getPosition()I

    move-result v3

    iget v4, p0, Lcom/amigo/internal/app/AmigoAlertController$AlertParams$2;->mIsCheckedIndex:I

    invoke-interface {p3, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-ne v4, v1, :cond_0

    :goto_0
    invoke-virtual {v2, v3, v1}, Lcom/amigo/internal/app/AmigoAlertController$RecycleListView;->setItemChecked(IZ)V

    .line 1133
    return-void

    .line 1132
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cursor"    # Landroid/database/Cursor;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 1137
    iget-object v0, p0, Lcom/amigo/internal/app/AmigoAlertController$AlertParams$2;->this$0:Lcom/amigo/internal/app/AmigoAlertController$AlertParams;

    iget-object v0, v0, Lcom/amigo/internal/app/AmigoAlertController$AlertParams;->mInflater:Landroid/view/LayoutInflater;

    iget-object v1, p0, Lcom/amigo/internal/app/AmigoAlertController$AlertParams$2;->val$dialog:Lcom/amigo/internal/app/AmigoAlertController;

    # getter for: Lcom/amigo/internal/app/AmigoAlertController;->mMultiChoiceItemLayout:I
    invoke-static {v1}, Lcom/amigo/internal/app/AmigoAlertController;->access$1100(Lcom/amigo/internal/app/AmigoAlertController;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
