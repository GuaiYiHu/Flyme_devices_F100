.class public interface abstract Lamigo/widget/AmigoMultiChoiceAdapter;
.super Ljava/lang/Object;
.source "AmigoMultiChoiceAdapter.java"


# virtual methods
.method public abstract enterMultiChoiceMode()V
.end method

.method public abstract getCheckedItemCount()I
.end method

.method public abstract getCheckedItems()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end method

.method public abstract isChecked(J)Z
.end method

.method public abstract isItemCheckable(I)Z
.end method

.method public abstract save(Landroid/os/Bundle;)V
.end method

.method public abstract setAdapterView(Landroid/widget/AdapterView;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<-",
            "Landroid/widget/BaseAdapter;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setItemChecked(JZ)V
.end method

.method public abstract setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
.end method
