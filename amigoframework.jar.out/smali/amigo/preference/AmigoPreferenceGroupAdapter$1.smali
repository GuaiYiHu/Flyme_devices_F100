.class Lamigo/preference/AmigoPreferenceGroupAdapter$1;
.super Ljava/lang/Object;
.source "AmigoPreferenceGroupAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lamigo/preference/AmigoPreferenceGroupAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lamigo/preference/AmigoPreferenceGroupAdapter;


# direct methods
.method constructor <init>(Lamigo/preference/AmigoPreferenceGroupAdapter;)V
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lamigo/preference/AmigoPreferenceGroupAdapter$1;->this$0:Lamigo/preference/AmigoPreferenceGroupAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lamigo/preference/AmigoPreferenceGroupAdapter$1;->this$0:Lamigo/preference/AmigoPreferenceGroupAdapter;

    # invokes: Lamigo/preference/AmigoPreferenceGroupAdapter;->syncMyPreferences()V
    invoke-static {v0}, Lamigo/preference/AmigoPreferenceGroupAdapter;->access$100(Lamigo/preference/AmigoPreferenceGroupAdapter;)V

    .line 56
    return-void
.end method
