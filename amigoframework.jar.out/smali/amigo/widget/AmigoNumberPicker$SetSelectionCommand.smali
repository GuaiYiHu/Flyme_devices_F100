.class Lamigo/widget/AmigoNumberPicker$SetSelectionCommand;
.super Ljava/lang/Object;
.source "AmigoNumberPicker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lamigo/widget/AmigoNumberPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SetSelectionCommand"
.end annotation


# instance fields
.field private mSelectionEnd:I

.field private mSelectionStart:I

.field final synthetic this$0:Lamigo/widget/AmigoNumberPicker;


# direct methods
.method constructor <init>(Lamigo/widget/AmigoNumberPicker;)V
    .locals 0

    .prologue
    .line 2275
    iput-object p1, p0, Lamigo/widget/AmigoNumberPicker$SetSelectionCommand;->this$0:Lamigo/widget/AmigoNumberPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$702(Lamigo/widget/AmigoNumberPicker$SetSelectionCommand;I)I
    .locals 0
    .param p0, "x0"    # Lamigo/widget/AmigoNumberPicker$SetSelectionCommand;
    .param p1, "x1"    # I

    .prologue
    .line 2275
    iput p1, p0, Lamigo/widget/AmigoNumberPicker$SetSelectionCommand;->mSelectionStart:I

    return p1
.end method

.method static synthetic access$802(Lamigo/widget/AmigoNumberPicker$SetSelectionCommand;I)I
    .locals 0
    .param p0, "x0"    # Lamigo/widget/AmigoNumberPicker$SetSelectionCommand;
    .param p1, "x1"    # I

    .prologue
    .line 2275
    iput p1, p0, Lamigo/widget/AmigoNumberPicker$SetSelectionCommand;->mSelectionEnd:I

    return p1
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 2281
    iget-object v0, p0, Lamigo/widget/AmigoNumberPicker$SetSelectionCommand;->this$0:Lamigo/widget/AmigoNumberPicker;

    # getter for: Lamigo/widget/AmigoNumberPicker;->mInputText:Landroid/widget/EditText;
    invoke-static {v0}, Lamigo/widget/AmigoNumberPicker;->access$000(Lamigo/widget/AmigoNumberPicker;)Landroid/widget/EditText;

    move-result-object v0

    iget v1, p0, Lamigo/widget/AmigoNumberPicker$SetSelectionCommand;->mSelectionStart:I

    iget v2, p0, Lamigo/widget/AmigoNumberPicker$SetSelectionCommand;->mSelectionEnd:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/EditText;->setSelection(II)V

    .line 2282
    return-void
.end method
