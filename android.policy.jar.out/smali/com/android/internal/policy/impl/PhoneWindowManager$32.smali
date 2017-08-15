.class Lcom/android/internal/policy/impl/PhoneWindowManager$32;
.super Ljava/lang/Object;
.source "PhoneWindowManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/PhoneWindowManager;->showBootMessage(Ljava/lang/CharSequence;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

.field final synthetic val$msg:Ljava/lang/CharSequence;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/PhoneWindowManager;Ljava/lang/CharSequence;)V
    .locals 0

    .prologue
    .line 7129
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$32;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iput-object p2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$32;->val$msg:Ljava/lang/CharSequence;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 7131
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$32;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mBootMsgDialog:Lamigo/app/AmigoProgressDialog;

    if-nez v1, :cond_0

    .line 7146
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$32;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    new-instance v2, Lcom/android/internal/policy/impl/PhoneWindowManager$32$1;

    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$32;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v3, v3, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const/4 v4, 0x7

    invoke-direct {v2, p0, v3, v4}, Lcom/android/internal/policy/impl/PhoneWindowManager$32$1;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager$32;Landroid/content/Context;I)V

    iput-object v2, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mBootMsgDialog:Lamigo/app/AmigoProgressDialog;

    .line 7170
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$32;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/pm/PackageManager;->isUpgrade()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 7171
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$32;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mBootMsgDialog:Lamigo/app/AmigoProgressDialog;

    const v2, 0x1040499

    invoke-virtual {v1, v2}, Lamigo/app/AmigoProgressDialog;->setTitle(I)V

    .line 7177
    :goto_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$32;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mBootMsgDialog:Lamigo/app/AmigoProgressDialog;

    invoke-virtual {v1, v5}, Lamigo/app/AmigoProgressDialog;->setProgressStyle(I)V

    .line 7179
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$32;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mBootMsgDialog:Lamigo/app/AmigoProgressDialog;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lamigo/app/AmigoProgressDialog;->setIndeterminate(Z)V

    .line 7180
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$32;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mBootMsgDialog:Lamigo/app/AmigoProgressDialog;

    invoke-virtual {v1}, Lamigo/app/AmigoProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7e5

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    .line 7182
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$32;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mBootMsgDialog:Lamigo/app/AmigoProgressDialog;

    invoke-virtual {v1}, Lamigo/app/AmigoProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x102

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 7185
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$32;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mBootMsgDialog:Lamigo/app/AmigoProgressDialog;

    invoke-virtual {v1}, Lamigo/app/AmigoProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroid/view/Window;->setDimAmount(F)V

    .line 7186
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$32;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mBootMsgDialog:Lamigo/app/AmigoProgressDialog;

    invoke-virtual {v1}, Lamigo/app/AmigoProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 7187
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    const/4 v1, 0x5

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 7188
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$32;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mBootMsgDialog:Lamigo/app/AmigoProgressDialog;

    invoke-virtual {v1}, Lamigo/app/AmigoProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 7189
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$32;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mBootMsgDialog:Lamigo/app/AmigoProgressDialog;

    invoke-virtual {v1, v5}, Lamigo/app/AmigoProgressDialog;->setCancelable(Z)V

    .line 7190
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$32;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mBootMsgDialog:Lamigo/app/AmigoProgressDialog;

    invoke-virtual {v1}, Lamigo/app/AmigoProgressDialog;->show()V

    .line 7192
    .end local v0    # "lp":Landroid/view/WindowManager$LayoutParams;
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$32;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mBootMsgDialog:Lamigo/app/AmigoProgressDialog;

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$32;->val$msg:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Lamigo/app/AmigoProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 7193
    return-void

    .line 7173
    :cond_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$32;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mBootMsgDialog:Lamigo/app/AmigoProgressDialog;

    const v2, 0x104049a

    invoke-virtual {v1, v2}, Lamigo/app/AmigoProgressDialog;->setTitle(I)V

    goto :goto_0
.end method
