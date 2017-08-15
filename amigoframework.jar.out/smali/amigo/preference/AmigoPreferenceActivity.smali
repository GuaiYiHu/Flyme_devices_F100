.class public abstract Lamigo/preference/AmigoPreferenceActivity;
.super Lamigo/app/AmigoListActivity;
.source "AmigoPreferenceActivity.java"

# interfaces
.implements Lamigo/preference/AmigoPreferenceManager$OnPreferenceTreeClickListener;
.implements Lamigo/preference/AmigoPreferenceFragment$OnPreferenceStartFragmentCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lamigo/preference/AmigoPreferenceActivity$Header;,
        Lamigo/preference/AmigoPreferenceActivity$HeaderAdapter;
    }
.end annotation


# static fields
.field private static final BACK_STACK_PREFS:Ljava/lang/String; = ":android:prefs"

.field private static final CUR_HEADER_TAG:Ljava/lang/String; = ":android:cur_header"

.field public static final EXTRA_NO_HEADERS:Ljava/lang/String; = ":android:no_headers"

.field private static final EXTRA_PREFS_SET_BACK_TEXT:Ljava/lang/String; = "extra_prefs_set_back_text"

.field private static final EXTRA_PREFS_SET_NEXT_TEXT:Ljava/lang/String; = "extra_prefs_set_next_text"

.field private static final EXTRA_PREFS_SHOW_BUTTON_BAR:Ljava/lang/String; = "extra_prefs_show_button_bar"

.field private static final EXTRA_PREFS_SHOW_SKIP:Ljava/lang/String; = "extra_prefs_show_skip"

.field public static final EXTRA_SHOW_FRAGMENT:Ljava/lang/String; = ":android:show_fragment"

.field public static final EXTRA_SHOW_FRAGMENT_ARGUMENTS:Ljava/lang/String; = ":android:show_fragment_args"

.field public static final EXTRA_SHOW_FRAGMENT_SHORT_TITLE:Ljava/lang/String; = ":android:show_fragment_short_title"

.field public static final EXTRA_SHOW_FRAGMENT_TITLE:Ljava/lang/String; = ":android:show_fragment_title"

.field private static final FIRST_REQUEST_CODE:I = 0x64

.field private static final HEADERS_TAG:Ljava/lang/String; = ":android:headers"

.field public static final HEADER_ID_UNDEFINED:J = -0x1L

.field private static final MSG_BIND_PREFERENCES:I = 0x1

.field private static final MSG_BUILD_HEADERS:I = 0x2

.field private static final PREFERENCES_TAG:Ljava/lang/String; = ":android:preferences"


# instance fields
.field private mCurHeader:Lamigo/preference/AmigoPreferenceActivity$Header;

.field private mFragmentBreadCrumbs:Landroid/app/FragmentBreadCrumbs;

.field private mHandler:Landroid/os/Handler;

.field private final mHeaders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lamigo/preference/AmigoPreferenceActivity$Header;",
            ">;"
        }
    .end annotation
.end field

.field private mListFooter:Landroid/widget/FrameLayout;

.field private mNextButton:Landroid/widget/Button;

.field private mPreferenceManager:Lamigo/preference/AmigoPreferenceManager;

.field private mPrefsContainer:Landroid/view/ViewGroup;

.field private mSavedInstanceState:Landroid/os/Bundle;

.field private mSinglePane:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 109
    invoke-direct {p0}, Lamigo/app/AmigoListActivity;-><init>()V

    .line 174
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lamigo/preference/AmigoPreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    .line 203
    new-instance v0, Lamigo/preference/AmigoPreferenceActivity$1;

    invoke-direct {v0, p0}, Lamigo/preference/AmigoPreferenceActivity$1;-><init>(Lamigo/preference/AmigoPreferenceActivity;)V

    iput-object v0, p0, Lamigo/preference/AmigoPreferenceActivity;->mHandler:Landroid/os/Handler;

    .line 292
    return-void
.end method

.method static synthetic access$000(Lamigo/preference/AmigoPreferenceActivity;)V
    .locals 0
    .param p0, "x0"    # Lamigo/preference/AmigoPreferenceActivity;

    .prologue
    .line 109
    invoke-direct {p0}, Lamigo/preference/AmigoPreferenceActivity;->bindPreferences()V

    return-void
.end method

.method static synthetic access$100(Lamigo/preference/AmigoPreferenceActivity;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lamigo/preference/AmigoPreferenceActivity;

    .prologue
    .line 109
    iget-object v0, p0, Lamigo/preference/AmigoPreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lamigo/preference/AmigoPreferenceActivity;)Lamigo/preference/AmigoPreferenceActivity$Header;
    .locals 1
    .param p0, "x0"    # Lamigo/preference/AmigoPreferenceActivity;

    .prologue
    .line 109
    iget-object v0, p0, Lamigo/preference/AmigoPreferenceActivity;->mCurHeader:Lamigo/preference/AmigoPreferenceActivity$Header;

    return-object v0
.end method

.method private bindPreferences()V
    .locals 2

    .prologue
    .line 1311
    invoke-virtual {p0}, Lamigo/preference/AmigoPreferenceActivity;->getPreferenceScreen()Lamigo/preference/AmigoPreferenceScreen;

    move-result-object v0

    .line 1312
    .local v0, "preferenceScreen":Lamigo/preference/AmigoPreferenceScreen;
    if-eqz v0, :cond_0

    .line 1313
    invoke-virtual {p0}, Lamigo/preference/AmigoPreferenceActivity;->getListView()Lamigo/widget/AmigoListView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lamigo/preference/AmigoPreferenceScreen;->bind(Lamigo/widget/AmigoListView;)V

    .line 1314
    iget-object v1, p0, Lamigo/preference/AmigoPreferenceActivity;->mSavedInstanceState:Landroid/os/Bundle;

    if-eqz v1, :cond_0

    .line 1315
    iget-object v1, p0, Lamigo/preference/AmigoPreferenceActivity;->mSavedInstanceState:Landroid/os/Bundle;

    invoke-super {p0, v1}, Lamigo/app/AmigoListActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 1316
    const/4 v1, 0x0

    iput-object v1, p0, Lamigo/preference/AmigoPreferenceActivity;->mSavedInstanceState:Landroid/os/Bundle;

    .line 1319
    :cond_0
    return-void
.end method

.method private postBindPreferences()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1306
    iget-object v0, p0, Lamigo/preference/AmigoPreferenceActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1308
    :goto_0
    return-void

    .line 1307
    :cond_0
    iget-object v0, p0, Lamigo/preference/AmigoPreferenceActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method private requirePreferenceManager()V
    .locals 2

    .prologue
    .line 1334
    iget-object v0, p0, Lamigo/preference/AmigoPreferenceActivity;->mPreferenceManager:Lamigo/preference/AmigoPreferenceManager;

    if-nez v0, :cond_1

    .line 1335
    invoke-virtual {p0}, Lamigo/preference/AmigoPreferenceActivity;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1336
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "This should be called after super.onCreate."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1338
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Modern two-pane PreferenceActivity requires use of a PreferenceFragment"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1341
    :cond_1
    return-void
.end method

.method private switchToHeaderInner(Ljava/lang/String;Landroid/os/Bundle;I)V
    .locals 5
    .param p1, "fragmentName"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;
    .param p3, "direction"    # I

    .prologue
    .line 1122
    invoke-virtual {p0}, Lamigo/preference/AmigoPreferenceActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string v3, ":android:prefs"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/app/FragmentManager;->popBackStack(Ljava/lang/String;I)V

    .line 1124
    invoke-static {p0, p1, p2}, Landroid/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/app/Fragment;

    move-result-object v0

    .line 1125
    .local v0, "f":Landroid/app/Fragment;
    invoke-virtual {p0}, Lamigo/preference/AmigoPreferenceActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 1126
    .local v1, "transaction":Landroid/app/FragmentTransaction;
    const/16 v2, 0x1003

    invoke-virtual {v1, v2}, Landroid/app/FragmentTransaction;->setTransition(I)Landroid/app/FragmentTransaction;

    .line 1127
    const v2, 0x90b0023

    invoke-virtual {v1, v2, v0}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 1128
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 1129
    return-void
.end method


# virtual methods
.method public addPreferencesFromIntent(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1392
    invoke-direct {p0}, Lamigo/preference/AmigoPreferenceActivity;->requirePreferenceManager()V

    .line 1394
    iget-object v0, p0, Lamigo/preference/AmigoPreferenceActivity;->mPreferenceManager:Lamigo/preference/AmigoPreferenceManager;

    invoke-virtual {p0}, Lamigo/preference/AmigoPreferenceActivity;->getPreferenceScreen()Lamigo/preference/AmigoPreferenceScreen;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lamigo/preference/AmigoPreferenceManager;->inflateFromIntent(Landroid/content/Intent;Lamigo/preference/AmigoPreferenceScreen;)Lamigo/preference/AmigoPreferenceScreen;

    move-result-object v0

    invoke-virtual {p0, v0}, Lamigo/preference/AmigoPreferenceActivity;->setPreferenceScreen(Lamigo/preference/AmigoPreferenceScreen;)V

    .line 1395
    return-void
.end method

.method public addPreferencesFromResource(I)V
    .locals 2
    .param p1, "preferencesResId"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1408
    invoke-direct {p0}, Lamigo/preference/AmigoPreferenceActivity;->requirePreferenceManager()V

    .line 1410
    iget-object v0, p0, Lamigo/preference/AmigoPreferenceActivity;->mPreferenceManager:Lamigo/preference/AmigoPreferenceManager;

    invoke-virtual {p0}, Lamigo/preference/AmigoPreferenceActivity;->getPreferenceScreen()Lamigo/preference/AmigoPreferenceScreen;

    move-result-object v1

    invoke-virtual {v0, p0, p1, v1}, Lamigo/preference/AmigoPreferenceManager;->inflateFromResource(Landroid/content/Context;ILamigo/preference/AmigoPreferenceScreen;)Lamigo/preference/AmigoPreferenceScreen;

    move-result-object v0

    invoke-virtual {p0, v0}, Lamigo/preference/AmigoPreferenceActivity;->setPreferenceScreen(Lamigo/preference/AmigoPreferenceScreen;)V

    .line 1412
    return-void
.end method

.method findBestMatchingHeader(Lamigo/preference/AmigoPreferenceActivity$Header;Ljava/util/ArrayList;)Lamigo/preference/AmigoPreferenceActivity$Header;
    .locals 9
    .param p1, "cur"    # Lamigo/preference/AmigoPreferenceActivity$Header;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lamigo/preference/AmigoPreferenceActivity$Header;",
            "Ljava/util/ArrayList",
            "<",
            "Lamigo/preference/AmigoPreferenceActivity$Header;",
            ">;)",
            "Lamigo/preference/AmigoPreferenceActivity$Header;"
        }
    .end annotation

    .prologue
    .local p2, "from":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lamigo/preference/AmigoPreferenceActivity$Header;>;"
    const/4 v8, 0x1

    .line 1163
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1164
    .local v2, "matches":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lamigo/preference/AmigoPreferenceActivity$Header;>;"
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_1

    .line 1165
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lamigo/preference/AmigoPreferenceActivity$Header;

    .line 1166
    .local v3, "oh":Lamigo/preference/AmigoPreferenceActivity$Header;
    if-eq p1, v3, :cond_0

    iget-wide v4, p1, Lamigo/preference/AmigoPreferenceActivity$Header;->id:J

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-eqz v4, :cond_3

    iget-wide v4, p1, Lamigo/preference/AmigoPreferenceActivity$Header;->id:J

    iget-wide v6, v3, Lamigo/preference/AmigoPreferenceActivity$Header;->id:J

    cmp-long v4, v4, v6

    if-nez v4, :cond_3

    .line 1168
    :cond_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1169
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1186
    .end local v3    # "oh":Lamigo/preference/AmigoPreferenceActivity$Header;
    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1187
    .local v0, "NM":I
    if-ne v0, v8, :cond_7

    .line 1188
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lamigo/preference/AmigoPreferenceActivity$Header;

    move-object v3, v4

    .line 1204
    :cond_2
    :goto_1
    return-object v3

    .line 1172
    .end local v0    # "NM":I
    .restart local v3    # "oh":Lamigo/preference/AmigoPreferenceActivity$Header;
    :cond_3
    iget-object v4, p1, Lamigo/preference/AmigoPreferenceActivity$Header;->fragment:Ljava/lang/String;

    if-eqz v4, :cond_5

    .line 1173
    iget-object v4, p1, Lamigo/preference/AmigoPreferenceActivity$Header;->fragment:Ljava/lang/String;

    iget-object v5, v3, Lamigo/preference/AmigoPreferenceActivity$Header;->fragment:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1174
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1164
    :cond_4
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1176
    :cond_5
    iget-object v4, p1, Lamigo/preference/AmigoPreferenceActivity$Header;->intent:Landroid/content/Intent;

    if-eqz v4, :cond_6

    .line 1177
    iget-object v4, p1, Lamigo/preference/AmigoPreferenceActivity$Header;->intent:Landroid/content/Intent;

    iget-object v5, v3, Lamigo/preference/AmigoPreferenceActivity$Header;->intent:Landroid/content/Intent;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1178
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1180
    :cond_6
    iget-object v4, p1, Lamigo/preference/AmigoPreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    if-eqz v4, :cond_4

    .line 1181
    iget-object v4, p1, Lamigo/preference/AmigoPreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    iget-object v5, v3, Lamigo/preference/AmigoPreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1182
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1189
    .end local v3    # "oh":Lamigo/preference/AmigoPreferenceActivity$Header;
    .restart local v0    # "NM":I
    :cond_7
    if-le v0, v8, :cond_b

    .line 1190
    const/4 v1, 0x0

    :goto_3
    if-ge v1, v0, :cond_b

    .line 1191
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lamigo/preference/AmigoPreferenceActivity$Header;

    .line 1192
    .restart local v3    # "oh":Lamigo/preference/AmigoPreferenceActivity$Header;
    iget-object v4, p1, Lamigo/preference/AmigoPreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    if-eqz v4, :cond_8

    iget-object v4, p1, Lamigo/preference/AmigoPreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    iget-object v5, v3, Lamigo/preference/AmigoPreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 1196
    :cond_8
    iget-object v4, p1, Lamigo/preference/AmigoPreferenceActivity$Header;->extras:Landroid/os/Bundle;

    if-eqz v4, :cond_9

    iget-object v4, p1, Lamigo/preference/AmigoPreferenceActivity$Header;->extras:Landroid/os/Bundle;

    iget-object v5, v3, Lamigo/preference/AmigoPreferenceActivity$Header;->extras:Landroid/os/Bundle;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 1199
    :cond_9
    iget-object v4, p1, Lamigo/preference/AmigoPreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    if-eqz v4, :cond_a

    iget-object v4, p1, Lamigo/preference/AmigoPreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    iget-object v5, v3, Lamigo/preference/AmigoPreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 1190
    :cond_a
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 1204
    .end local v3    # "oh":Lamigo/preference/AmigoPreferenceActivity$Header;
    :cond_b
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public findPreference(Ljava/lang/CharSequence;)Lamigo/preference/AmigoPreference;
    .locals 1
    .param p1, "key"    # Ljava/lang/CharSequence;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1438
    iget-object v0, p0, Lamigo/preference/AmigoPreferenceActivity;->mPreferenceManager:Lamigo/preference/AmigoPreferenceManager;

    if-nez v0, :cond_0

    .line 1439
    const/4 v0, 0x0

    .line 1442
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lamigo/preference/AmigoPreferenceActivity;->mPreferenceManager:Lamigo/preference/AmigoPreferenceManager;

    invoke-virtual {v0, p1}, Lamigo/preference/AmigoPreferenceManager;->findPreference(Ljava/lang/CharSequence;)Lamigo/preference/AmigoPreference;

    move-result-object v0

    goto :goto_0
.end method

.method public finishPreferencePanel(Landroid/app/Fragment;ILandroid/content/Intent;)V
    .locals 2
    .param p1, "caller"    # Landroid/app/Fragment;
    .param p2, "resultCode"    # I
    .param p3, "resultData"    # Landroid/content/Intent;

    .prologue
    .line 1277
    iget-boolean v0, p0, Lamigo/preference/AmigoPreferenceActivity;->mSinglePane:Z

    if-eqz v0, :cond_1

    .line 1278
    invoke-virtual {p0, p2, p3}, Lamigo/preference/AmigoPreferenceActivity;->setResult(ILandroid/content/Intent;)V

    .line 1279
    invoke-virtual {p0}, Lamigo/preference/AmigoPreferenceActivity;->finish()V

    .line 1290
    :cond_0
    :goto_0
    return-void

    .line 1282
    :cond_1
    invoke-virtual {p0}, Lamigo/preference/AmigoPreferenceActivity;->onBackPressed()V

    .line 1283
    if-eqz p1, :cond_0

    .line 1284
    invoke-virtual {p1}, Landroid/app/Fragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1285
    invoke-virtual {p1}, Landroid/app/Fragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    invoke-virtual {p1}, Landroid/app/Fragment;->getTargetRequestCode()I

    move-result v1

    invoke-virtual {v0, v1, p2, p3}, Landroid/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0
.end method

.method public getHeaders()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lamigo/preference/AmigoPreferenceActivity$Header;",
            ">;"
        }
    .end annotation

    .prologue
    .line 651
    iget-object v0, p0, Lamigo/preference/AmigoPreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    return-object v0
.end method

.method protected getNextButton()Landroid/widget/Button;
    .locals 1

    .prologue
    .line 1459
    iget-object v0, p0, Lamigo/preference/AmigoPreferenceActivity;->mNextButton:Landroid/widget/Button;

    return-object v0
.end method

.method public getPreferenceManager()Lamigo/preference/AmigoPreferenceManager;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1330
    iget-object v0, p0, Lamigo/preference/AmigoPreferenceActivity;->mPreferenceManager:Lamigo/preference/AmigoPreferenceManager;

    return-object v0
.end method

.method public getPreferenceScreen()Lamigo/preference/AmigoPreferenceScreen;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1376
    iget-object v0, p0, Lamigo/preference/AmigoPreferenceActivity;->mPreferenceManager:Lamigo/preference/AmigoPreferenceManager;

    if-eqz v0, :cond_0

    .line 1377
    iget-object v0, p0, Lamigo/preference/AmigoPreferenceActivity;->mPreferenceManager:Lamigo/preference/AmigoPreferenceManager;

    invoke-virtual {v0}, Lamigo/preference/AmigoPreferenceManager;->getPreferenceScreen()Lamigo/preference/AmigoPreferenceScreen;

    move-result-object v0

    .line 1379
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasHeaders()Z
    .locals 1

    .prologue
    .line 642
    invoke-virtual {p0}, Lamigo/preference/AmigoPreferenceActivity;->getListView()Lamigo/widget/AmigoListView;

    move-result-object v0

    invoke-virtual {v0}, Lamigo/widget/AmigoListView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lamigo/preference/AmigoPreferenceActivity;->mPreferenceManager:Lamigo/preference/AmigoPreferenceManager;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected hasNextButton()Z
    .locals 1

    .prologue
    .line 1455
    iget-object v0, p0, Lamigo/preference/AmigoPreferenceActivity;->mNextButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public invalidateHeaders()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 727
    iget-object v0, p0, Lamigo/preference/AmigoPreferenceActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 728
    iget-object v0, p0, Lamigo/preference/AmigoPreferenceActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 730
    :cond_0
    return-void
.end method

.method public isMultiPane()Z
    .locals 1

    .prologue
    .line 659
    invoke-virtual {p0}, Lamigo/preference/AmigoPreferenceActivity;->hasHeaders()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lamigo/preference/AmigoPreferenceActivity;->mPrefsContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public loadHeadersFromResource(ILjava/util/List;)V
    .locals 17
    .param p1, "resid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lamigo/preference/AmigoPreferenceActivity$Header;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 740
    .local p2, "target":Ljava/util/List;, "Ljava/util/List<Lamigo/preference/AmigoPreferenceActivity$Header;>;"
    const/4 v10, 0x0

    .line 742
    .local v10, "parser":Landroid/content/res/XmlResourceParser;
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lamigo/preference/AmigoPreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    move/from16 v0, p1

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v10

    .line 743
    invoke-static {v10}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v2

    .line 747
    .local v2, "attrs":Landroid/util/AttributeSet;
    :cond_0
    invoke-interface {v10}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v13

    .local v13, "type":I
    const/4 v14, 0x1

    if-eq v13, v14, :cond_1

    const/4 v14, 0x2

    if-ne v13, v14, :cond_0

    .line 751
    :cond_1
    invoke-interface {v10}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v8

    .line 752
    .local v8, "nodeName":Ljava/lang/String;
    const-string v14, "preference-headers"

    invoke-virtual {v14, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_3

    .line 753
    new-instance v14, Ljava/lang/RuntimeException;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "XML document must start with <preference-headers> tag; found"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " at "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-interface {v10}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v14
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 853
    .end local v2    # "attrs":Landroid/util/AttributeSet;
    .end local v8    # "nodeName":Ljava/lang/String;
    .end local v13    # "type":I
    :catch_0
    move-exception v4

    .line 854
    .local v4, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_1
    new-instance v14, Ljava/lang/RuntimeException;

    const-string v15, "Error parsing headers"

    invoke-direct {v14, v15, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v14
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 858
    .end local v4    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catchall_0
    move-exception v14

    if-eqz v10, :cond_2

    invoke-interface {v10}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_2
    throw v14

    .line 758
    .restart local v2    # "attrs":Landroid/util/AttributeSet;
    .restart local v8    # "nodeName":Ljava/lang/String;
    .restart local v13    # "type":I
    :cond_3
    const/4 v3, 0x0

    .line 760
    .local v3, "curBundle":Landroid/os/Bundle;
    :try_start_2
    invoke-interface {v10}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v9

    .line 762
    .local v9, "outerDepth":I
    :cond_4
    :goto_0
    invoke-interface {v10}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v13

    const/4 v14, 0x1

    if-eq v13, v14, :cond_16

    const/4 v14, 0x3

    if-ne v13, v14, :cond_5

    invoke-interface {v10}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v14

    if-le v14, v9, :cond_16

    .line 763
    :cond_5
    const/4 v14, 0x3

    if-eq v13, v14, :cond_4

    const/4 v14, 0x4

    if-eq v13, v14, :cond_4

    .line 767
    invoke-interface {v10}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v8

    .line 768
    const-string v14, "header"

    invoke-virtual {v14, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_15

    .line 769
    new-instance v5, Lamigo/preference/AmigoPreferenceActivity$Header;

    invoke-direct {v5}, Lamigo/preference/AmigoPreferenceActivity$Header;-><init>()V

    .line 771
    .local v5, "header":Lamigo/preference/AmigoPreferenceActivity$Header;
    invoke-virtual/range {p0 .. p0}, Lamigo/preference/AmigoPreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    sget-object v15, Lcom/amigo/internal/R$styleable;->AmigoPreferenceHeader:[I

    invoke-virtual {v14, v2, v15}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v11

    .line 773
    .local v11, "sa":Landroid/content/res/TypedArray;
    const/4 v14, 0x4

    const/4 v15, -0x1

    invoke-virtual {v11, v14, v15}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v14

    int-to-long v14, v14

    iput-wide v14, v5, Lamigo/preference/AmigoPreferenceActivity$Header;->id:J

    .line 776
    const/4 v14, 0x1

    invoke-virtual {v11, v14}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v12

    .line 778
    .local v12, "tv":Landroid/util/TypedValue;
    if-eqz v12, :cond_6

    iget v14, v12, Landroid/util/TypedValue;->type:I

    const/4 v15, 0x3

    if-ne v14, v15, :cond_6

    .line 779
    iget v14, v12, Landroid/util/TypedValue;->resourceId:I

    if-eqz v14, :cond_d

    .line 780
    iget v14, v12, Landroid/util/TypedValue;->resourceId:I

    iput v14, v5, Lamigo/preference/AmigoPreferenceActivity$Header;->titleRes:I

    .line 785
    :cond_6
    :goto_1
    const/4 v14, 0x2

    invoke-virtual {v11, v14}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v12

    .line 787
    if-eqz v12, :cond_7

    iget v14, v12, Landroid/util/TypedValue;->type:I

    const/4 v15, 0x3

    if-ne v14, v15, :cond_7

    .line 788
    iget v14, v12, Landroid/util/TypedValue;->resourceId:I

    if-eqz v14, :cond_e

    .line 789
    iget v14, v12, Landroid/util/TypedValue;->resourceId:I

    iput v14, v5, Lamigo/preference/AmigoPreferenceActivity$Header;->summaryRes:I

    .line 794
    :cond_7
    :goto_2
    const/4 v14, 0x5

    invoke-virtual {v11, v14}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v12

    .line 796
    if-eqz v12, :cond_8

    iget v14, v12, Landroid/util/TypedValue;->type:I

    const/4 v15, 0x3

    if-ne v14, v15, :cond_8

    .line 797
    iget v14, v12, Landroid/util/TypedValue;->resourceId:I

    if-eqz v14, :cond_f

    .line 798
    iget v14, v12, Landroid/util/TypedValue;->resourceId:I

    iput v14, v5, Lamigo/preference/AmigoPreferenceActivity$Header;->breadCrumbTitleRes:I

    .line 803
    :cond_8
    :goto_3
    const/4 v14, 0x6

    invoke-virtual {v11, v14}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v12

    .line 805
    if-eqz v12, :cond_9

    iget v14, v12, Landroid/util/TypedValue;->type:I

    const/4 v15, 0x3

    if-ne v14, v15, :cond_9

    .line 806
    iget v14, v12, Landroid/util/TypedValue;->resourceId:I

    if-eqz v14, :cond_10

    .line 807
    iget v14, v12, Landroid/util/TypedValue;->resourceId:I

    iput v14, v5, Lamigo/preference/AmigoPreferenceActivity$Header;->breadCrumbShortTitleRes:I

    .line 812
    :cond_9
    :goto_4
    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual {v11, v14, v15}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v14

    iput v14, v5, Lamigo/preference/AmigoPreferenceActivity$Header;->iconRes:I

    .line 814
    const/4 v14, 0x3

    invoke-virtual {v11, v14}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v14

    iput-object v14, v5, Lamigo/preference/AmigoPreferenceActivity$Header;->fragment:Ljava/lang/String;

    .line 816
    invoke-virtual {v11}, Landroid/content/res/TypedArray;->recycle()V

    .line 818
    if-nez v3, :cond_a

    .line 819
    new-instance v3, Landroid/os/Bundle;

    .end local v3    # "curBundle":Landroid/os/Bundle;
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 822
    .restart local v3    # "curBundle":Landroid/os/Bundle;
    :cond_a
    invoke-interface {v10}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v6

    .line 824
    .local v6, "innerDepth":I
    :cond_b
    :goto_5
    invoke-interface {v10}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v13

    const/4 v14, 0x1

    if-eq v13, v14, :cond_13

    const/4 v14, 0x3

    if-ne v13, v14, :cond_c

    invoke-interface {v10}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v14

    if-le v14, v6, :cond_13

    .line 825
    :cond_c
    const/4 v14, 0x3

    if-eq v13, v14, :cond_b

    const/4 v14, 0x4

    if-eq v13, v14, :cond_b

    .line 829
    invoke-interface {v10}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v7

    .line 830
    .local v7, "innerNodeName":Ljava/lang/String;
    const-string v14, "extra"

    invoke-virtual {v7, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_11

    .line 831
    invoke-virtual/range {p0 .. p0}, Lamigo/preference/AmigoPreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const-string v15, "extra"

    invoke-virtual {v14, v15, v2, v3}, Landroid/content/res/Resources;->parseBundleExtra(Ljava/lang/String;Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    .line 832
    invoke-static {v10}, Lcom/amigo/internal/util/AmigoXmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_5

    .line 855
    .end local v2    # "attrs":Landroid/util/AttributeSet;
    .end local v3    # "curBundle":Landroid/os/Bundle;
    .end local v5    # "header":Lamigo/preference/AmigoPreferenceActivity$Header;
    .end local v6    # "innerDepth":I
    .end local v7    # "innerNodeName":Ljava/lang/String;
    .end local v8    # "nodeName":Ljava/lang/String;
    .end local v9    # "outerDepth":I
    .end local v11    # "sa":Landroid/content/res/TypedArray;
    .end local v12    # "tv":Landroid/util/TypedValue;
    .end local v13    # "type":I
    :catch_1
    move-exception v4

    .line 856
    .local v4, "e":Ljava/io/IOException;
    :try_start_3
    new-instance v14, Ljava/lang/RuntimeException;

    const-string v15, "Error parsing headers"

    invoke-direct {v14, v15, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v14
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 782
    .end local v4    # "e":Ljava/io/IOException;
    .restart local v2    # "attrs":Landroid/util/AttributeSet;
    .restart local v3    # "curBundle":Landroid/os/Bundle;
    .restart local v5    # "header":Lamigo/preference/AmigoPreferenceActivity$Header;
    .restart local v8    # "nodeName":Ljava/lang/String;
    .restart local v9    # "outerDepth":I
    .restart local v11    # "sa":Landroid/content/res/TypedArray;
    .restart local v12    # "tv":Landroid/util/TypedValue;
    .restart local v13    # "type":I
    :cond_d
    :try_start_4
    iget-object v14, v12, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    iput-object v14, v5, Lamigo/preference/AmigoPreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    goto/16 :goto_1

    .line 791
    :cond_e
    iget-object v14, v12, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    iput-object v14, v5, Lamigo/preference/AmigoPreferenceActivity$Header;->summary:Ljava/lang/CharSequence;

    goto/16 :goto_2

    .line 800
    :cond_f
    iget-object v14, v12, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    iput-object v14, v5, Lamigo/preference/AmigoPreferenceActivity$Header;->breadCrumbTitle:Ljava/lang/CharSequence;

    goto :goto_3

    .line 809
    :cond_10
    iget-object v14, v12, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    iput-object v14, v5, Lamigo/preference/AmigoPreferenceActivity$Header;->breadCrumbShortTitle:Ljava/lang/CharSequence;

    goto :goto_4

    .line 834
    .restart local v6    # "innerDepth":I
    .restart local v7    # "innerNodeName":Ljava/lang/String;
    :cond_11
    const-string v14, "intent"

    invoke-virtual {v7, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_12

    .line 835
    invoke-virtual/range {p0 .. p0}, Lamigo/preference/AmigoPreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    invoke-static {v14, v10, v2}, Landroid/content/Intent;->parseIntent(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Landroid/content/Intent;

    move-result-object v14

    iput-object v14, v5, Lamigo/preference/AmigoPreferenceActivity$Header;->intent:Landroid/content/Intent;

    goto :goto_5

    .line 838
    :cond_12
    invoke-static {v10}, Lcom/amigo/internal/util/AmigoXmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_5

    .line 842
    .end local v7    # "innerNodeName":Ljava/lang/String;
    :cond_13
    invoke-virtual {v3}, Landroid/os/Bundle;->size()I

    move-result v14

    if-lez v14, :cond_14

    .line 843
    iput-object v3, v5, Lamigo/preference/AmigoPreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    .line 844
    const/4 v3, 0x0

    .line 847
    :cond_14
    move-object/from16 v0, p2

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 849
    .end local v5    # "header":Lamigo/preference/AmigoPreferenceActivity$Header;
    .end local v6    # "innerDepth":I
    .end local v11    # "sa":Landroid/content/res/TypedArray;
    .end local v12    # "tv":Landroid/util/TypedValue;
    :cond_15
    invoke-static {v10}, Lcom/amigo/internal/util/AmigoXmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    .line 858
    :cond_16
    if-eqz v10, :cond_17

    invoke-interface {v10}, Landroid/content/res/XmlResourceParser;->close()V

    .line 861
    :cond_17
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 936
    invoke-super {p0, p1, p2, p3}, Lamigo/app/AmigoListActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 938
    iget-object v0, p0, Lamigo/preference/AmigoPreferenceActivity;->mPreferenceManager:Lamigo/preference/AmigoPreferenceManager;

    if-eqz v0, :cond_0

    .line 939
    iget-object v0, p0, Lamigo/preference/AmigoPreferenceActivity;->mPreferenceManager:Lamigo/preference/AmigoPreferenceManager;

    invoke-virtual {v0, p1, p2, p3}, Lamigo/preference/AmigoPreferenceManager;->dispatchActivityResult(IILandroid/content/Intent;)V

    .line 941
    :cond_0
    return-void
.end method

.method public onBuildHeaders(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lamigo/preference/AmigoPreferenceActivity$Header;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 720
    .local p1, "target":Ljava/util/List;, "Ljava/util/List<Lamigo/preference/AmigoPreferenceActivity$Header;>;"
    return-void
.end method

.method public onBuildStartFragmentIntent(Ljava/lang/String;Landroid/os/Bundle;II)Landroid/content/Intent;
    .locals 3
    .param p1, "fragmentName"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;
    .param p3, "titleRes"    # I
    .param p4, "shortTitleRes"    # I

    .prologue
    .line 1006
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1007
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1008
    const-string v1, ":android:show_fragment"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1009
    const-string v1, ":android:show_fragment_args"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1010
    const-string v1, ":android:show_fragment_title"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1011
    const-string v1, ":android:show_fragment_short_title"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1012
    const-string v1, ":android:no_headers"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1013
    return-object v0
.end method

.method public onContentChanged()V
    .locals 1

    .prologue
    .line 945
    invoke-super {p0}, Lamigo/app/AmigoListActivity;->onContentChanged()V

    .line 947
    iget-object v0, p0, Lamigo/preference/AmigoPreferenceActivity;->mPreferenceManager:Lamigo/preference/AmigoPreferenceManager;

    if-eqz v0, :cond_0

    .line 948
    invoke-direct {p0}, Lamigo/preference/AmigoPreferenceActivity;->postBindPreferences()V

    .line 950
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 20
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 494
    invoke-super/range {p0 .. p1}, Lamigo/app/AmigoListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 496
    const v17, 0x903000d

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lamigo/preference/AmigoPreferenceActivity;->setContentView(I)V

    .line 498
    const v17, 0x90b0020

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lamigo/preference/AmigoPreferenceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/FrameLayout;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lamigo/preference/AmigoPreferenceActivity;->mListFooter:Landroid/widget/FrameLayout;

    .line 499
    const v17, 0x90b0021

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lamigo/preference/AmigoPreferenceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/view/ViewGroup;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lamigo/preference/AmigoPreferenceActivity;->mPrefsContainer:Landroid/view/ViewGroup;

    .line 500
    invoke-virtual/range {p0 .. p0}, Lamigo/preference/AmigoPreferenceActivity;->onIsHidingHeaders()Z

    move-result v8

    .line 501
    .local v8, "hidingHeaders":Z
    if-nez v8, :cond_0

    invoke-virtual/range {p0 .. p0}, Lamigo/preference/AmigoPreferenceActivity;->onIsMultiPane()Z

    move-result v17

    if-nez v17, :cond_6

    :cond_0
    const/16 v17, 0x1

    :goto_0
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lamigo/preference/AmigoPreferenceActivity;->mSinglePane:Z

    .line 502
    invoke-virtual/range {p0 .. p0}, Lamigo/preference/AmigoPreferenceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v17

    const-string v18, ":android:show_fragment"

    invoke-virtual/range {v17 .. v18}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 503
    .local v10, "initialFragment":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lamigo/preference/AmigoPreferenceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v17

    const-string v18, ":android:show_fragment_args"

    invoke-virtual/range {v17 .. v18}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v9

    .line 504
    .local v9, "initialArguments":Landroid/os/Bundle;
    invoke-virtual/range {p0 .. p0}, Lamigo/preference/AmigoPreferenceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v17

    const-string v18, ":android:show_fragment_title"

    const/16 v19, 0x0

    invoke-virtual/range {v17 .. v19}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v13

    .line 505
    .local v13, "initialTitle":I
    invoke-virtual/range {p0 .. p0}, Lamigo/preference/AmigoPreferenceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v17

    const-string v18, ":android:show_fragment_short_title"

    const/16 v19, 0x0

    invoke-virtual/range {v17 .. v19}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    .line 507
    .local v11, "initialShortTitle":I
    if-eqz p1, :cond_7

    .line 510
    const-string v17, ":android:headers"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v7

    .line 511
    .local v7, "headers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lamigo/preference/AmigoPreferenceActivity$Header;>;"
    if-eqz v7, :cond_1

    .line 512
    move-object/from16 v0, p0

    iget-object v0, v0, Lamigo/preference/AmigoPreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 513
    const-string v17, ":android:cur_header"

    const/16 v18, -0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 515
    .local v5, "curHeader":I
    if-ltz v5, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lamigo/preference/AmigoPreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v17

    move/from16 v0, v17

    if-ge v5, v0, :cond_1

    .line 516
    move-object/from16 v0, p0

    iget-object v0, v0, Lamigo/preference/AmigoPreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lamigo/preference/AmigoPreferenceActivity$Header;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lamigo/preference/AmigoPreferenceActivity;->setSelectedHeader(Lamigo/preference/AmigoPreferenceActivity$Header;)V

    .line 555
    .end local v5    # "curHeader":I
    .end local v7    # "headers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lamigo/preference/AmigoPreferenceActivity$Header;>;"
    :cond_1
    :goto_1
    if-eqz v10, :cond_c

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lamigo/preference/AmigoPreferenceActivity;->mSinglePane:Z

    move/from16 v17, v0

    if-eqz v17, :cond_c

    .line 557
    const v17, 0x90b0022

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lamigo/preference/AmigoPreferenceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v17

    const/16 v18, 0x8

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->setVisibility(I)V

    .line 558
    move-object/from16 v0, p0

    iget-object v0, v0, Lamigo/preference/AmigoPreferenceActivity;->mPrefsContainer:Landroid/view/ViewGroup;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 559
    if-eqz v13, :cond_2

    .line 560
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lamigo/preference/AmigoPreferenceActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v14

    .line 561
    .local v14, "initialTitleStr":Ljava/lang/CharSequence;
    if-eqz v11, :cond_b

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lamigo/preference/AmigoPreferenceActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v12

    .line 563
    .local v12, "initialShortTitleStr":Ljava/lang/CharSequence;
    :goto_2
    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v12}, Lamigo/preference/AmigoPreferenceActivity;->showBreadCrumbs(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 586
    .end local v12    # "initialShortTitleStr":Ljava/lang/CharSequence;
    .end local v14    # "initialTitleStr":Ljava/lang/CharSequence;
    :cond_2
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lamigo/preference/AmigoPreferenceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v15

    .line 587
    .local v15, "intent":Landroid/content/Intent;
    const-string v17, "extra_prefs_show_button_bar"

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v17

    if-eqz v17, :cond_5

    .line 589
    const v17, 0x90b0024

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lamigo/preference/AmigoPreferenceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v17

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->setVisibility(I)V

    .line 591
    const v17, 0x90b0025

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lamigo/preference/AmigoPreferenceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 592
    .local v3, "backButton":Landroid/widget/Button;
    new-instance v17, Lamigo/preference/AmigoPreferenceActivity$2;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lamigo/preference/AmigoPreferenceActivity$2;-><init>(Lamigo/preference/AmigoPreferenceActivity;)V

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 598
    const v17, 0x90b0026

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lamigo/preference/AmigoPreferenceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/Button;

    .line 599
    .local v16, "skipButton":Landroid/widget/Button;
    new-instance v17, Lamigo/preference/AmigoPreferenceActivity$3;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lamigo/preference/AmigoPreferenceActivity$3;-><init>(Lamigo/preference/AmigoPreferenceActivity;)V

    invoke-virtual/range {v16 .. v17}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 605
    const v17, 0x90b0027

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lamigo/preference/AmigoPreferenceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/Button;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lamigo/preference/AmigoPreferenceActivity;->mNextButton:Landroid/widget/Button;

    .line 606
    move-object/from16 v0, p0

    iget-object v0, v0, Lamigo/preference/AmigoPreferenceActivity;->mNextButton:Landroid/widget/Button;

    move-object/from16 v17, v0

    new-instance v18, Lamigo/preference/AmigoPreferenceActivity$4;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lamigo/preference/AmigoPreferenceActivity$4;-><init>(Lamigo/preference/AmigoPreferenceActivity;)V

    invoke-virtual/range {v17 .. v18}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 614
    const-string v17, "extra_prefs_set_next_text"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_3

    .line 615
    const-string v17, "extra_prefs_set_next_text"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 616
    .local v4, "buttonText":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_f

    .line 617
    move-object/from16 v0, p0

    iget-object v0, v0, Lamigo/preference/AmigoPreferenceActivity;->mNextButton:Landroid/widget/Button;

    move-object/from16 v17, v0

    const/16 v18, 0x8

    invoke-virtual/range {v17 .. v18}, Landroid/widget/Button;->setVisibility(I)V

    .line 623
    .end local v4    # "buttonText":Ljava/lang/String;
    :cond_3
    :goto_4
    const-string v17, "extra_prefs_set_back_text"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_4

    .line 624
    const-string v17, "extra_prefs_set_back_text"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 625
    .restart local v4    # "buttonText":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_10

    .line 626
    const/16 v17, 0x8

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 632
    .end local v4    # "buttonText":Ljava/lang/String;
    :cond_4
    :goto_5
    const-string v17, "extra_prefs_show_skip"

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v17

    if-eqz v17, :cond_5

    .line 633
    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Landroid/widget/Button;->setVisibility(I)V

    .line 636
    .end local v3    # "backButton":Landroid/widget/Button;
    .end local v16    # "skipButton":Landroid/widget/Button;
    :cond_5
    return-void

    .line 501
    .end local v9    # "initialArguments":Landroid/os/Bundle;
    .end local v10    # "initialFragment":Ljava/lang/String;
    .end local v11    # "initialShortTitle":I
    .end local v13    # "initialTitle":I
    .end local v15    # "intent":Landroid/content/Intent;
    :cond_6
    const/16 v17, 0x0

    goto/16 :goto_0

    .line 521
    .restart local v9    # "initialArguments":Landroid/os/Bundle;
    .restart local v10    # "initialFragment":Ljava/lang/String;
    .restart local v11    # "initialShortTitle":I
    .restart local v13    # "initialTitle":I
    :cond_7
    if-eqz v10, :cond_9

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lamigo/preference/AmigoPreferenceActivity;->mSinglePane:Z

    move/from16 v17, v0

    if-eqz v17, :cond_9

    .line 525
    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v9}, Lamigo/preference/AmigoPreferenceActivity;->switchToHeader(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 526
    if-eqz v13, :cond_1

    .line 527
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lamigo/preference/AmigoPreferenceActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v14

    .line 528
    .restart local v14    # "initialTitleStr":Ljava/lang/CharSequence;
    if-eqz v11, :cond_8

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lamigo/preference/AmigoPreferenceActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v12

    .line 530
    .restart local v12    # "initialShortTitleStr":Ljava/lang/CharSequence;
    :goto_6
    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v12}, Lamigo/preference/AmigoPreferenceActivity;->showBreadCrumbs(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 528
    .end local v12    # "initialShortTitleStr":Ljava/lang/CharSequence;
    :cond_8
    const/4 v12, 0x0

    goto :goto_6

    .line 535
    .end local v14    # "initialTitleStr":Ljava/lang/CharSequence;
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lamigo/preference/AmigoPreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lamigo/preference/AmigoPreferenceActivity;->onBuildHeaders(Ljava/util/List;)V

    .line 540
    move-object/from16 v0, p0

    iget-object v0, v0, Lamigo/preference/AmigoPreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v17

    if-lez v17, :cond_1

    .line 541
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lamigo/preference/AmigoPreferenceActivity;->mSinglePane:Z

    move/from16 v17, v0

    if-nez v17, :cond_1

    .line 542
    if-nez v10, :cond_a

    .line 543
    invoke-virtual/range {p0 .. p0}, Lamigo/preference/AmigoPreferenceActivity;->onGetInitialHeader()Lamigo/preference/AmigoPreferenceActivity$Header;

    move-result-object v6

    .line 544
    .local v6, "h":Lamigo/preference/AmigoPreferenceActivity$Header;
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lamigo/preference/AmigoPreferenceActivity;->switchToHeader(Lamigo/preference/AmigoPreferenceActivity$Header;)V

    goto/16 :goto_1

    .line 546
    .end local v6    # "h":Lamigo/preference/AmigoPreferenceActivity$Header;
    :cond_a
    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v9}, Lamigo/preference/AmigoPreferenceActivity;->switchToHeader(Ljava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_1

    .line 561
    .restart local v14    # "initialTitleStr":Ljava/lang/CharSequence;
    :cond_b
    const/4 v12, 0x0

    goto/16 :goto_2

    .line 565
    .end local v14    # "initialTitleStr":Ljava/lang/CharSequence;
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lamigo/preference/AmigoPreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v17

    if-lez v17, :cond_e

    .line 566
    new-instance v17, Lamigo/preference/AmigoPreferenceActivity$HeaderAdapter;

    move-object/from16 v0, p0

    iget-object v0, v0, Lamigo/preference/AmigoPreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lamigo/preference/AmigoPreferenceActivity$HeaderAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lamigo/preference/AmigoPreferenceActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 567
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lamigo/preference/AmigoPreferenceActivity;->mSinglePane:Z

    move/from16 v17, v0

    if-nez v17, :cond_2

    .line 569
    invoke-virtual/range {p0 .. p0}, Lamigo/preference/AmigoPreferenceActivity;->getListView()Lamigo/widget/AmigoListView;

    move-result-object v17

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Lamigo/widget/AmigoListView;->setChoiceMode(I)V

    .line 570
    move-object/from16 v0, p0

    iget-object v0, v0, Lamigo/preference/AmigoPreferenceActivity;->mCurHeader:Lamigo/preference/AmigoPreferenceActivity$Header;

    move-object/from16 v17, v0

    if-eqz v17, :cond_d

    .line 571
    move-object/from16 v0, p0

    iget-object v0, v0, Lamigo/preference/AmigoPreferenceActivity;->mCurHeader:Lamigo/preference/AmigoPreferenceActivity$Header;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lamigo/preference/AmigoPreferenceActivity;->setSelectedHeader(Lamigo/preference/AmigoPreferenceActivity$Header;)V

    .line 573
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lamigo/preference/AmigoPreferenceActivity;->mPrefsContainer:Landroid/view/ViewGroup;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto/16 :goto_3

    .line 578
    :cond_e
    const v17, 0x903000e

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lamigo/preference/AmigoPreferenceActivity;->setContentView(I)V

    .line 579
    const v17, 0x90b0020

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lamigo/preference/AmigoPreferenceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/FrameLayout;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lamigo/preference/AmigoPreferenceActivity;->mListFooter:Landroid/widget/FrameLayout;

    .line 580
    const v17, 0x90b0023

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lamigo/preference/AmigoPreferenceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/view/ViewGroup;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lamigo/preference/AmigoPreferenceActivity;->mPrefsContainer:Landroid/view/ViewGroup;

    .line 581
    new-instance v17, Lamigo/preference/AmigoPreferenceManager;

    const/16 v18, 0x64

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lamigo/preference/AmigoPreferenceManager;-><init>(Landroid/app/Activity;I)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lamigo/preference/AmigoPreferenceActivity;->mPreferenceManager:Lamigo/preference/AmigoPreferenceManager;

    .line 582
    move-object/from16 v0, p0

    iget-object v0, v0, Lamigo/preference/AmigoPreferenceActivity;->mPreferenceManager:Lamigo/preference/AmigoPreferenceManager;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lamigo/preference/AmigoPreferenceManager;->setOnPreferenceTreeClickListener(Lamigo/preference/AmigoPreferenceManager$OnPreferenceTreeClickListener;)V

    goto/16 :goto_3

    .line 620
    .restart local v3    # "backButton":Landroid/widget/Button;
    .restart local v4    # "buttonText":Ljava/lang/String;
    .restart local v15    # "intent":Landroid/content/Intent;
    .restart local v16    # "skipButton":Landroid/widget/Button;
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lamigo/preference/AmigoPreferenceActivity;->mNextButton:Landroid/widget/Button;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 629
    :cond_10
    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 884
    invoke-super {p0}, Lamigo/app/AmigoListActivity;->onDestroy()V

    .line 886
    iget-object v0, p0, Lamigo/preference/AmigoPreferenceActivity;->mPreferenceManager:Lamigo/preference/AmigoPreferenceManager;

    if-eqz v0, :cond_0

    .line 887
    iget-object v0, p0, Lamigo/preference/AmigoPreferenceActivity;->mPreferenceManager:Lamigo/preference/AmigoPreferenceManager;

    invoke-virtual {v0}, Lamigo/preference/AmigoPreferenceManager;->dispatchActivityDestroy()V

    .line 889
    :cond_0
    return-void
.end method

.method public onGetInitialHeader()Lamigo/preference/AmigoPreferenceActivity$Header;
    .locals 2

    .prologue
    .line 692
    iget-object v0, p0, Lamigo/preference/AmigoPreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lamigo/preference/AmigoPreferenceActivity$Header;

    return-object v0
.end method

.method public onGetNewHeader()Lamigo/preference/AmigoPreferenceActivity$Header;
    .locals 1

    .prologue
    .line 702
    const/4 v0, 0x0

    return-object v0
.end method

.method public onHeaderClick(Lamigo/preference/AmigoPreferenceActivity$Header;I)V
    .locals 7
    .param p1, "header"    # Lamigo/preference/AmigoPreferenceActivity$Header;
    .param p2, "position"    # I

    .prologue
    .line 972
    iget-object v0, p1, Lamigo/preference/AmigoPreferenceActivity$Header;->fragment:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 973
    iget-boolean v0, p0, Lamigo/preference/AmigoPreferenceActivity;->mSinglePane:Z

    if-eqz v0, :cond_2

    .line 974
    iget v5, p1, Lamigo/preference/AmigoPreferenceActivity$Header;->breadCrumbTitleRes:I

    .line 975
    .local v5, "titleRes":I
    iget v6, p1, Lamigo/preference/AmigoPreferenceActivity$Header;->breadCrumbShortTitleRes:I

    .line 976
    .local v6, "shortTitleRes":I
    if-nez v5, :cond_0

    .line 977
    iget v5, p1, Lamigo/preference/AmigoPreferenceActivity$Header;->titleRes:I

    .line 978
    const/4 v6, 0x0

    .line 980
    :cond_0
    iget-object v1, p1, Lamigo/preference/AmigoPreferenceActivity$Header;->fragment:Ljava/lang/String;

    iget-object v2, p1, Lamigo/preference/AmigoPreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lamigo/preference/AmigoPreferenceActivity;->startWithFragment(Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Fragment;III)V

    .line 988
    .end local v5    # "titleRes":I
    .end local v6    # "shortTitleRes":I
    :cond_1
    :goto_0
    return-void

    .line 983
    :cond_2
    invoke-virtual {p0, p1}, Lamigo/preference/AmigoPreferenceActivity;->switchToHeader(Lamigo/preference/AmigoPreferenceActivity$Header;)V

    goto :goto_0

    .line 985
    :cond_3
    iget-object v0, p1, Lamigo/preference/AmigoPreferenceActivity$Header;->intent:Landroid/content/Intent;

    if-eqz v0, :cond_1

    .line 986
    iget-object v0, p1, Lamigo/preference/AmigoPreferenceActivity$Header;->intent:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lamigo/preference/AmigoPreferenceActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onIsHidingHeaders()Z
    .locals 3

    .prologue
    .line 681
    invoke-virtual {p0}, Lamigo/preference/AmigoPreferenceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, ":android:no_headers"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public onIsMultiPane()Z
    .locals 3

    .prologue
    .line 668
    invoke-virtual {p0}, Lamigo/preference/AmigoPreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x9070000

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 670
    .local v0, "preferMultiPane":Z
    return v0
.end method

.method protected onListItemClick(Lamigo/widget/AmigoListView;Landroid/view/View;IJ)V
    .locals 2
    .param p1, "l"    # Lamigo/widget/AmigoListView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .prologue
    .line 954
    invoke-super/range {p0 .. p5}, Lamigo/app/AmigoListActivity;->onListItemClick(Lamigo/widget/AmigoListView;Landroid/view/View;IJ)V

    .line 956
    invoke-virtual {p0}, Lamigo/preference/AmigoPreferenceActivity;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 957
    invoke-virtual {p0}, Lamigo/preference/AmigoPreferenceActivity;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    invoke-interface {v1, p3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .line 958
    .local v0, "item":Ljava/lang/Object;
    instance-of v1, v0, Lamigo/preference/AmigoPreferenceActivity$Header;

    if-eqz v1, :cond_0

    check-cast v0, Lamigo/preference/AmigoPreferenceActivity$Header;

    .end local v0    # "item":Ljava/lang/Object;
    invoke-virtual {p0, v0, p3}, Lamigo/preference/AmigoPreferenceActivity;->onHeaderClick(Lamigo/preference/AmigoPreferenceActivity$Header;I)V

    .line 960
    :cond_0
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1447
    iget-object v0, p0, Lamigo/preference/AmigoPreferenceActivity;->mPreferenceManager:Lamigo/preference/AmigoPreferenceManager;

    if-eqz v0, :cond_0

    .line 1448
    iget-object v0, p0, Lamigo/preference/AmigoPreferenceActivity;->mPreferenceManager:Lamigo/preference/AmigoPreferenceManager;

    invoke-virtual {v0, p1}, Lamigo/preference/AmigoPreferenceManager;->dispatchNewIntent(Landroid/content/Intent;)V

    .line 1450
    :cond_0
    return-void
.end method

.method public onPreferenceStartFragment(Lamigo/preference/AmigoPreferenceFragment;Lamigo/preference/AmigoPreference;)Z
    .locals 7
    .param p1, "caller"    # Lamigo/preference/AmigoPreferenceFragment;
    .param p2, "pref"    # Lamigo/preference/AmigoPreference;

    .prologue
    .line 1294
    invoke-virtual {p2}, Lamigo/preference/AmigoPreference;->getFragment()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lamigo/preference/AmigoPreference;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {p2}, Lamigo/preference/AmigoPreference;->getTitleRes()I

    move-result v3

    invoke-virtual {p2}, Lamigo/preference/AmigoPreference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lamigo/preference/AmigoPreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 1296
    const/4 v0, 0x1

    return v0
.end method

.method public onPreferenceTreeClick(Lamigo/preference/AmigoPreferenceScreen;Lamigo/preference/AmigoPreference;)Z
    .locals 1
    .param p1, "preferenceScreen"    # Lamigo/preference/AmigoPreferenceScreen;
    .param p2, "preference"    # Lamigo/preference/AmigoPreference;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1422
    const/4 v0, 0x0

    return v0
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "state"    # Landroid/os/Bundle;

    .prologue
    .line 917
    iget-object v2, p0, Lamigo/preference/AmigoPreferenceActivity;->mPreferenceManager:Lamigo/preference/AmigoPreferenceManager;

    if-eqz v2, :cond_0

    .line 918
    const-string v2, ":android:preferences"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 919
    .local v0, "container":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 920
    invoke-virtual {p0}, Lamigo/preference/AmigoPreferenceActivity;->getPreferenceScreen()Lamigo/preference/AmigoPreferenceScreen;

    move-result-object v1

    .line 921
    .local v1, "preferenceScreen":Lamigo/preference/AmigoPreferenceScreen;
    if-eqz v1, :cond_0

    .line 922
    invoke-virtual {v1, v0}, Lamigo/preference/AmigoPreferenceScreen;->restoreHierarchyState(Landroid/os/Bundle;)V

    .line 923
    iput-object p1, p0, Lamigo/preference/AmigoPreferenceActivity;->mSavedInstanceState:Landroid/os/Bundle;

    .line 932
    .end local v0    # "container":Landroid/os/Bundle;
    .end local v1    # "preferenceScreen":Lamigo/preference/AmigoPreferenceScreen;
    :goto_0
    return-void

    .line 931
    :cond_0
    invoke-super {p0, p1}, Lamigo/app/AmigoListActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 893
    invoke-super {p0, p1}, Lamigo/app/AmigoListActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 895
    iget-object v3, p0, Lamigo/preference/AmigoPreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 896
    const-string v3, ":android:headers"

    iget-object v4, p0, Lamigo/preference/AmigoPreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 897
    iget-object v3, p0, Lamigo/preference/AmigoPreferenceActivity;->mCurHeader:Lamigo/preference/AmigoPreferenceActivity$Header;

    if-eqz v3, :cond_0

    .line 898
    iget-object v3, p0, Lamigo/preference/AmigoPreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    iget-object v4, p0, Lamigo/preference/AmigoPreferenceActivity;->mCurHeader:Lamigo/preference/AmigoPreferenceActivity$Header;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 899
    .local v1, "index":I
    if-ltz v1, :cond_0

    .line 900
    const-string v3, ":android:cur_header"

    invoke-virtual {p1, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 905
    .end local v1    # "index":I
    :cond_0
    iget-object v3, p0, Lamigo/preference/AmigoPreferenceActivity;->mPreferenceManager:Lamigo/preference/AmigoPreferenceManager;

    if-eqz v3, :cond_1

    .line 906
    invoke-virtual {p0}, Lamigo/preference/AmigoPreferenceActivity;->getPreferenceScreen()Lamigo/preference/AmigoPreferenceScreen;

    move-result-object v2

    .line 907
    .local v2, "preferenceScreen":Lamigo/preference/AmigoPreferenceScreen;
    if-eqz v2, :cond_1

    .line 908
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 909
    .local v0, "container":Landroid/os/Bundle;
    invoke-virtual {v2, v0}, Lamigo/preference/AmigoPreferenceScreen;->saveHierarchyState(Landroid/os/Bundle;)V

    .line 910
    const-string v3, ":android:preferences"

    invoke-virtual {p1, v3, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 913
    .end local v0    # "container":Landroid/os/Bundle;
    .end local v2    # "preferenceScreen":Lamigo/preference/AmigoPreferenceScreen;
    :cond_1
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 875
    invoke-super {p0}, Lamigo/app/AmigoListActivity;->onStop()V

    .line 877
    iget-object v0, p0, Lamigo/preference/AmigoPreferenceActivity;->mPreferenceManager:Lamigo/preference/AmigoPreferenceManager;

    if-eqz v0, :cond_0

    .line 878
    iget-object v0, p0, Lamigo/preference/AmigoPreferenceActivity;->mPreferenceManager:Lamigo/preference/AmigoPreferenceManager;

    invoke-virtual {v0}, Lamigo/preference/AmigoPreferenceManager;->dispatchActivityStop()V

    .line 880
    :cond_0
    return-void
.end method

.method public setListFooter(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 867
    iget-object v0, p0, Lamigo/preference/AmigoPreferenceActivity;->mListFooter:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 868
    iget-object v0, p0, Lamigo/preference/AmigoPreferenceActivity;->mListFooter:Landroid/widget/FrameLayout;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p1, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 871
    return-void
.end method

.method public setParentTitle(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;
    .param p2, "shortTitle"    # Ljava/lang/CharSequence;
    .param p3, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 1094
    iget-object v0, p0, Lamigo/preference/AmigoPreferenceActivity;->mFragmentBreadCrumbs:Landroid/app/FragmentBreadCrumbs;

    if-eqz v0, :cond_0

    .line 1095
    iget-object v0, p0, Lamigo/preference/AmigoPreferenceActivity;->mFragmentBreadCrumbs:Landroid/app/FragmentBreadCrumbs;

    invoke-virtual {v0, p1, p2, p3}, Landroid/app/FragmentBreadCrumbs;->setParentTitle(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V

    .line 1097
    :cond_0
    return-void
.end method

.method public setPreferenceScreen(Lamigo/preference/AmigoPreferenceScreen;)V
    .locals 2
    .param p1, "preferenceScreen"    # Lamigo/preference/AmigoPreferenceScreen;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1353
    invoke-direct {p0}, Lamigo/preference/AmigoPreferenceActivity;->requirePreferenceManager()V

    .line 1355
    iget-object v1, p0, Lamigo/preference/AmigoPreferenceActivity;->mPreferenceManager:Lamigo/preference/AmigoPreferenceManager;

    invoke-virtual {v1, p1}, Lamigo/preference/AmigoPreferenceManager;->setPreferences(Lamigo/preference/AmigoPreferenceScreen;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    .line 1356
    invoke-direct {p0}, Lamigo/preference/AmigoPreferenceActivity;->postBindPreferences()V

    .line 1357
    invoke-virtual {p0}, Lamigo/preference/AmigoPreferenceActivity;->getPreferenceScreen()Lamigo/preference/AmigoPreferenceScreen;

    move-result-object v1

    invoke-virtual {v1}, Lamigo/preference/AmigoPreferenceScreen;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    .line 1359
    .local v0, "title":Ljava/lang/CharSequence;
    if-eqz v0, :cond_0

    .line 1360
    invoke-virtual {p0, v0}, Lamigo/preference/AmigoPreferenceActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 1363
    .end local v0    # "title":Ljava/lang/CharSequence;
    :cond_0
    return-void
.end method

.method setSelectedHeader(Lamigo/preference/AmigoPreferenceActivity$Header;)V
    .locals 3
    .param p1, "header"    # Lamigo/preference/AmigoPreferenceActivity$Header;

    .prologue
    .line 1100
    iput-object p1, p0, Lamigo/preference/AmigoPreferenceActivity;->mCurHeader:Lamigo/preference/AmigoPreferenceActivity$Header;

    .line 1101
    iget-object v1, p0, Lamigo/preference/AmigoPreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 1102
    .local v0, "index":I
    if-ltz v0, :cond_0

    .line 1103
    invoke-virtual {p0}, Lamigo/preference/AmigoPreferenceActivity;->getListView()Lamigo/widget/AmigoListView;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lamigo/widget/AmigoListView;->setItemChecked(IZ)V

    .line 1107
    :goto_0
    invoke-virtual {p0, p1}, Lamigo/preference/AmigoPreferenceActivity;->showBreadCrumbs(Lamigo/preference/AmigoPreferenceActivity$Header;)V

    .line 1108
    return-void

    .line 1105
    :cond_0
    invoke-virtual {p0}, Lamigo/preference/AmigoPreferenceActivity;->getListView()Lamigo/widget/AmigoListView;

    move-result-object v1

    invoke-virtual {v1}, Lamigo/widget/AmigoListView;->clearChoices()V

    goto :goto_0
.end method

.method showBreadCrumbs(Lamigo/preference/AmigoPreferenceActivity$Header;)V
    .locals 3
    .param p1, "header"    # Lamigo/preference/AmigoPreferenceActivity$Header;

    .prologue
    .line 1111
    if-eqz p1, :cond_2

    .line 1112
    invoke-virtual {p0}, Lamigo/preference/AmigoPreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p1, v1}, Lamigo/preference/AmigoPreferenceActivity$Header;->getBreadCrumbTitle(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1113
    .local v0, "title":Ljava/lang/CharSequence;
    if-nez v0, :cond_0

    invoke-virtual {p0}, Lamigo/preference/AmigoPreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p1, v1}, Lamigo/preference/AmigoPreferenceActivity$Header;->getTitle(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1114
    :cond_0
    if-nez v0, :cond_1

    invoke-virtual {p0}, Lamigo/preference/AmigoPreferenceActivity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    .line 1115
    :cond_1
    invoke-virtual {p0}, Lamigo/preference/AmigoPreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p1, v1}, Lamigo/preference/AmigoPreferenceActivity$Header;->getBreadCrumbShortTitle(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lamigo/preference/AmigoPreferenceActivity;->showBreadCrumbs(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 1119
    .end local v0    # "title":Ljava/lang/CharSequence;
    :goto_0
    return-void

    .line 1117
    :cond_2
    invoke-virtual {p0}, Lamigo/preference/AmigoPreferenceActivity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lamigo/preference/AmigoPreferenceActivity;->showBreadCrumbs(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public showBreadCrumbs(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 5
    .param p1, "title"    # Ljava/lang/CharSequence;
    .param p2, "shortTitle"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v4, 0x0

    .line 1058
    iget-object v2, p0, Lamigo/preference/AmigoPreferenceActivity;->mFragmentBreadCrumbs:Landroid/app/FragmentBreadCrumbs;

    if-nez v2, :cond_3

    .line 1059
    const v2, 0x1020016

    invoke-virtual {p0, v2}, Lamigo/preference/AmigoPreferenceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1062
    .local v0, "crumbs":Landroid/view/View;
    :try_start_0
    check-cast v0, Landroid/app/FragmentBreadCrumbs;

    .end local v0    # "crumbs":Landroid/view/View;
    iput-object v0, p0, Lamigo/preference/AmigoPreferenceActivity;->mFragmentBreadCrumbs:Landroid/app/FragmentBreadCrumbs;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1066
    iget-object v2, p0, Lamigo/preference/AmigoPreferenceActivity;->mFragmentBreadCrumbs:Landroid/app/FragmentBreadCrumbs;

    if-nez v2, :cond_1

    .line 1067
    if-eqz p1, :cond_0

    .line 1068
    invoke-virtual {p0, p1}, Lamigo/preference/AmigoPreferenceActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 1083
    :cond_0
    :goto_0
    return-void

    .line 1063
    :catch_0
    move-exception v1

    .line 1064
    .local v1, "e":Ljava/lang/ClassCastException;
    goto :goto_0

    .line 1072
    .end local v1    # "e":Ljava/lang/ClassCastException;
    :cond_1
    iget-boolean v2, p0, Lamigo/preference/AmigoPreferenceActivity;->mSinglePane:Z

    if-eqz v2, :cond_2

    .line 1073
    iget-object v2, p0, Lamigo/preference/AmigoPreferenceActivity;->mFragmentBreadCrumbs:Landroid/app/FragmentBreadCrumbs;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/app/FragmentBreadCrumbs;->setVisibility(I)V

    .line 1078
    :cond_2
    iget-object v2, p0, Lamigo/preference/AmigoPreferenceActivity;->mFragmentBreadCrumbs:Landroid/app/FragmentBreadCrumbs;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/app/FragmentBreadCrumbs;->setMaxVisible(I)V

    .line 1079
    iget-object v2, p0, Lamigo/preference/AmigoPreferenceActivity;->mFragmentBreadCrumbs:Landroid/app/FragmentBreadCrumbs;

    invoke-virtual {v2, p0}, Landroid/app/FragmentBreadCrumbs;->setActivity(Landroid/app/Activity;)V

    .line 1081
    :cond_3
    iget-object v2, p0, Lamigo/preference/AmigoPreferenceActivity;->mFragmentBreadCrumbs:Landroid/app/FragmentBreadCrumbs;

    invoke-virtual {v2, p1, p2}, Landroid/app/FragmentBreadCrumbs;->setTitle(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 1082
    iget-object v2, p0, Lamigo/preference/AmigoPreferenceActivity;->mFragmentBreadCrumbs:Landroid/app/FragmentBreadCrumbs;

    invoke-virtual {v2, v4, v4, v4}, Landroid/app/FragmentBreadCrumbs;->setParentTitle(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public startPreferenceFragment(Landroid/app/Fragment;Z)V
    .locals 2
    .param p1, "fragment"    # Landroid/app/Fragment;
    .param p2, "push"    # Z

    .prologue
    .line 1215
    invoke-virtual {p0}, Lamigo/preference/AmigoPreferenceActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 1216
    .local v0, "transaction":Landroid/app/FragmentTransaction;
    const v1, 0x90b0023

    invoke-virtual {v0, v1, p1}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 1217
    if-eqz p2, :cond_0

    .line 1218
    const/16 v1, 0x1001

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->setTransition(I)Landroid/app/FragmentTransaction;

    .line 1219
    const-string v1, ":android:prefs"

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 1223
    :goto_0
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 1224
    return-void

    .line 1221
    :cond_0
    const/16 v1, 0x1003

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->setTransition(I)Landroid/app/FragmentTransaction;

    goto :goto_0
.end method

.method public startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V
    .locals 9
    .param p1, "fragmentClass"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;
    .param p3, "titleRes"    # I
    .param p4, "titleText"    # Ljava/lang/CharSequence;
    .param p5, "resultTo"    # Landroid/app/Fragment;
    .param p6, "resultRequestCode"    # I

    .prologue
    .line 1247
    iget-boolean v0, p0, Lamigo/preference/AmigoPreferenceActivity;->mSinglePane:Z

    if-eqz v0, :cond_0

    .line 1248
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p5

    move v4, p6

    move v5, p3

    invoke-virtual/range {v0 .. v6}, Lamigo/preference/AmigoPreferenceActivity;->startWithFragment(Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Fragment;III)V

    .line 1265
    :goto_0
    return-void

    .line 1250
    :cond_0
    invoke-static {p0, p1, p2}, Landroid/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/app/Fragment;

    move-result-object v7

    .line 1251
    .local v7, "f":Landroid/app/Fragment;
    if-eqz p5, :cond_1

    .line 1252
    invoke-virtual {v7, p5, p6}, Landroid/app/Fragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 1254
    :cond_1
    invoke-virtual {p0}, Lamigo/preference/AmigoPreferenceActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v8

    .line 1255
    .local v8, "transaction":Landroid/app/FragmentTransaction;
    const v0, 0x90b0023

    invoke-virtual {v8, v0, v7}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 1256
    if-eqz p3, :cond_3

    .line 1257
    invoke-virtual {v8, p3}, Landroid/app/FragmentTransaction;->setBreadCrumbTitle(I)Landroid/app/FragmentTransaction;

    .line 1261
    :cond_2
    :goto_1
    const/16 v0, 0x1001

    invoke-virtual {v8, v0}, Landroid/app/FragmentTransaction;->setTransition(I)Landroid/app/FragmentTransaction;

    .line 1262
    const-string v0, ":android:prefs"

    invoke-virtual {v8, v0}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 1263
    invoke-virtual {v8}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    goto :goto_0

    .line 1258
    :cond_3
    if-eqz p4, :cond_2

    .line 1259
    invoke-virtual {v8, p4}, Landroid/app/FragmentTransaction;->setBreadCrumbTitle(Ljava/lang/CharSequence;)Landroid/app/FragmentTransaction;

    goto :goto_1
.end method

.method public startWithFragment(Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Fragment;I)V
    .locals 7
    .param p1, "fragmentName"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;
    .param p3, "resultTo"    # Landroid/app/Fragment;
    .param p4, "resultRequestCode"    # I

    .prologue
    const/4 v5, 0x0

    .line 1022
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v6, v5

    invoke-virtual/range {v0 .. v6}, Lamigo/preference/AmigoPreferenceActivity;->startWithFragment(Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Fragment;III)V

    .line 1023
    return-void
.end method

.method public startWithFragment(Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Fragment;III)V
    .locals 1
    .param p1, "fragmentName"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;
    .param p3, "resultTo"    # Landroid/app/Fragment;
    .param p4, "resultRequestCode"    # I
    .param p5, "titleRes"    # I
    .param p6, "shortTitleRes"    # I

    .prologue
    .line 1044
    invoke-virtual {p0, p1, p2, p5, p6}, Lamigo/preference/AmigoPreferenceActivity;->onBuildStartFragmentIntent(Ljava/lang/String;Landroid/os/Bundle;II)Landroid/content/Intent;

    move-result-object v0

    .line 1045
    .local v0, "intent":Landroid/content/Intent;
    if-nez p3, :cond_0

    .line 1046
    invoke-virtual {p0, v0}, Lamigo/preference/AmigoPreferenceActivity;->startActivity(Landroid/content/Intent;)V

    .line 1050
    :goto_0
    return-void

    .line 1048
    :cond_0
    invoke-virtual {p3, v0, p4}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method public switchToHeader(Lamigo/preference/AmigoPreferenceActivity$Header;)V
    .locals 4
    .param p1, "header"    # Lamigo/preference/AmigoPreferenceActivity$Header;

    .prologue
    .line 1150
    iget-object v1, p0, Lamigo/preference/AmigoPreferenceActivity;->mCurHeader:Lamigo/preference/AmigoPreferenceActivity$Header;

    if-ne v1, p1, :cond_0

    .line 1153
    invoke-virtual {p0}, Lamigo/preference/AmigoPreferenceActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, ":android:prefs"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/app/FragmentManager;->popBackStack(Ljava/lang/String;I)V

    .line 1160
    :goto_0
    return-void

    .line 1156
    :cond_0
    iget-object v1, p0, Lamigo/preference/AmigoPreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    iget-object v2, p0, Lamigo/preference/AmigoPreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    iget-object v3, p0, Lamigo/preference/AmigoPreferenceActivity;->mCurHeader:Lamigo/preference/AmigoPreferenceActivity$Header;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    sub-int v0, v1, v2

    .line 1157
    .local v0, "direction":I
    iget-object v1, p1, Lamigo/preference/AmigoPreferenceActivity$Header;->fragment:Ljava/lang/String;

    iget-object v2, p1, Lamigo/preference/AmigoPreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    invoke-direct {p0, v1, v2, v0}, Lamigo/preference/AmigoPreferenceActivity;->switchToHeaderInner(Ljava/lang/String;Landroid/os/Bundle;I)V

    .line 1158
    invoke-virtual {p0, p1}, Lamigo/preference/AmigoPreferenceActivity;->setSelectedHeader(Lamigo/preference/AmigoPreferenceActivity$Header;)V

    goto :goto_0
.end method

.method public switchToHeader(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "fragmentName"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;

    .prologue
    .line 1139
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lamigo/preference/AmigoPreferenceActivity;->setSelectedHeader(Lamigo/preference/AmigoPreferenceActivity$Header;)V

    .line 1140
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lamigo/preference/AmigoPreferenceActivity;->switchToHeaderInner(Ljava/lang/String;Landroid/os/Bundle;I)V

    .line 1141
    return-void
.end method
