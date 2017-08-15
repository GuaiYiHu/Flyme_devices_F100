.class public Lcom/mediatek/storage/StorageDefaultPathDialog;
.super Lcom/amigo/internal/app/AmigoAlertActivity;
.source "StorageDefaultPathDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;


# static fields
.field private static final INSERT_OTG:Ljava/lang/String; = "insert_otg"

.field private static final SD_ACTION:Ljava/lang/String; = "android.intent.action.MEDIA_BAD_REMOVAL"

.field private static final TAG:Ljava/lang/String; = "StorageDefaultPathDialog"


# instance fields
.field private mInsertOtg:Ljava/lang/Boolean;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mSDCardStateFilter:Landroid/content/IntentFilter;

.field private final mSDStateReceiver:Landroid/content/BroadcastReceiver;

.field path:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/amigo/internal/app/AmigoAlertActivity;-><init>()V

    .line 88
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/storage/StorageDefaultPathDialog;->path:Ljava/lang/String;

    .line 91
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/storage/StorageDefaultPathDialog;->mInsertOtg:Ljava/lang/Boolean;

    .line 93
    new-instance v0, Lcom/mediatek/storage/StorageDefaultPathDialog$1;

    invoke-direct {v0, p0}, Lcom/mediatek/storage/StorageDefaultPathDialog$1;-><init>(Lcom/mediatek/storage/StorageDefaultPathDialog;)V

    iput-object v0, p0, Lcom/mediatek/storage/StorageDefaultPathDialog;->mSDStateReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private createDialog()V
    .locals 4

    .prologue
    .line 129
    invoke-virtual {p0}, Lcom/mediatek/storage/StorageDefaultPathDialog;->setupAlert()V

    .line 131
    new-instance v0, Lamigo/app/AmigoAlertDialog$Builder;

    const/4 v3, 0x7

    invoke-direct {v0, p0, v3}, Lamigo/app/AmigoAlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 133
    .local v0, "builder":Lamigo/app/AmigoAlertDialog$Builder;
    iget-object v3, p0, Lcom/mediatek/storage/StorageDefaultPathDialog;->mInsertOtg:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    const v3, 0x8050083

    invoke-virtual {p0, v3}, Lcom/mediatek/storage/StorageDefaultPathDialog;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 135
    .local v2, "title":Ljava/lang/String;
    :goto_0
    invoke-virtual {v0, v2}, Lamigo/app/AmigoAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lamigo/app/AmigoAlertDialog$Builder;

    .line 136
    const v3, 0x8050078

    invoke-virtual {v0, v3}, Lamigo/app/AmigoAlertDialog$Builder;->setMessage(I)Lamigo/app/AmigoAlertDialog$Builder;

    .line 137
    const/high16 v3, 0x1040000

    invoke-virtual {v0, v3, p0}, Lamigo/app/AmigoAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lamigo/app/AmigoAlertDialog$Builder;

    .line 138
    const v3, 0x104000a

    invoke-virtual {v0, v3, p0}, Lamigo/app/AmigoAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lamigo/app/AmigoAlertDialog$Builder;

    .line 139
    invoke-virtual {v0, p0}, Lamigo/app/AmigoAlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Lamigo/app/AmigoAlertDialog$Builder;

    .line 141
    invoke-virtual {v0}, Lamigo/app/AmigoAlertDialog$Builder;->create()Lamigo/app/AmigoAlertDialog;

    move-result-object v1

    .line 142
    .local v1, "dialog":Landroid/app/Dialog;
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 144
    return-void

    .line 133
    .end local v1    # "dialog":Landroid/app/Dialog;
    .end local v2    # "title":Ljava/lang/String;
    :cond_0
    const v3, 0x8050077

    invoke-virtual {p0, v3}, Lcom/mediatek/storage/StorageDefaultPathDialog;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private createView()Landroid/view/View;
    .locals 3

    .prologue
    .line 147
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 148
    .local v0, "messageView":Landroid/widget/TextView;
    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x1030044

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 149
    const v1, 0x8050078

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 150
    return-object v0
.end method

.method private onCancel()V
    .locals 0

    .prologue
    .line 190
    invoke-virtual {p0}, Lcom/mediatek/storage/StorageDefaultPathDialog;->finish()V

    .line 191
    return-void
.end method

.method private onOK()V
    .locals 3

    .prologue
    .line 178
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 179
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.settings.INTERNAL_STORAGE_SETTINGS"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 180
    const/high16 v1, 0x54000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 181
    const-string v1, "StorageDefaultPathDialog"

    const-string v2, "onOK() start activity"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    invoke-virtual {p0, v0}, Lcom/mediatek/storage/StorageDefaultPathDialog;->startActivity(Landroid/content/Intent;)V

    .line 183
    invoke-virtual {p0}, Lcom/mediatek/storage/StorageDefaultPathDialog;->finish()V

    .line 185
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 194
    packed-switch p2, :pswitch_data_0

    .line 202
    :goto_0
    return-void

    .line 196
    :pswitch_0
    invoke-direct {p0}, Lcom/mediatek/storage/StorageDefaultPathDialog;->onOK()V

    goto :goto_0

    .line 199
    :pswitch_1
    invoke-direct {p0}, Lcom/mediatek/storage/StorageDefaultPathDialog;->onCancel()V

    goto :goto_0

    .line 194
    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 104
    invoke-super {p0, p1}, Lcom/amigo/internal/app/AmigoAlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 105
    const-string v0, "StorageDefaultPathDialog"

    const-string v1, "StorageDefaultPathDialog onCreate()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.MEDIA_BAD_REMOVAL"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mediatek/storage/StorageDefaultPathDialog;->mSDCardStateFilter:Landroid/content/IntentFilter;

    .line 107
    iget-object v0, p0, Lcom/mediatek/storage/StorageDefaultPathDialog;->mSDCardStateFilter:Landroid/content/IntentFilter;

    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 108
    iget-object v0, p0, Lcom/mediatek/storage/StorageDefaultPathDialog;->mSDStateReceiver:Landroid/content/BroadcastReceiver;

    iput-object v0, p0, Lcom/mediatek/storage/StorageDefaultPathDialog;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 109
    invoke-virtual {p0}, Lcom/mediatek/storage/StorageDefaultPathDialog;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "insert_otg"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/storage/StorageDefaultPathDialog;->mInsertOtg:Ljava/lang/Boolean;

    .line 110
    invoke-direct {p0}, Lcom/mediatek/storage/StorageDefaultPathDialog;->createDialog()V

    .line 111
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 206
    invoke-virtual {p0}, Lcom/mediatek/storage/StorageDefaultPathDialog;->finish()V

    .line 207
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 170
    invoke-super {p0}, Lcom/amigo/internal/app/AmigoAlertActivity;->onPause()V

    .line 172
    const-string v0, "StorageDefaultPathDialog"

    const-string v1, "onPause entry"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    iget-object v0, p0, Lcom/mediatek/storage/StorageDefaultPathDialog;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/mediatek/storage/StorageDefaultPathDialog;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 175
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 155
    invoke-super {p0}, Lcom/amigo/internal/app/AmigoAlertActivity;->onResume()V

    .line 157
    iget-object v0, p0, Lcom/mediatek/storage/StorageDefaultPathDialog;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/mediatek/storage/StorageDefaultPathDialog;->mSDCardStateFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/storage/StorageDefaultPathDialog;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 158
    return-void
.end method
