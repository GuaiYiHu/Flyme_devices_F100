.class public Lcom/amigo/internal/util/ReflectionUtils;
.super Ljava/lang/Object;
.source "ReflectionUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDeclaredField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 3
    .param p0, "object"    # Ljava/lang/Object;
    .param p1, "fieldName"    # Ljava/lang/String;

    .prologue
    .line 46
    const/4 v1, 0x0

    .line 48
    .local v1, "field":Ljava/lang/reflect/Field;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 50
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    const-class v2, Ljava/lang/Object;

    if-eq v0, v2, :cond_0

    .line 52
    :try_start_0
    invoke-virtual {v0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    move-object v2, v1

    .line 58
    :goto_1
    return-object v2

    .line 54
    :catch_0
    move-exception v2

    .line 50
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    .line 58
    :cond_0
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public static varargs getDeclaredMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 3
    .param p0, "object"    # Ljava/lang/Object;
    .param p1, "methodName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .prologue
    .line 11
    .local p2, "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v1, 0x0

    .line 13
    .local v1, "method":Ljava/lang/reflect/Method;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    const-class v2, Ljava/lang/Object;

    if-eq v0, v2, :cond_0

    .line 15
    :try_start_0
    invoke-virtual {v0, p1, p2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    move-object v2, v1

    .line 21
    :goto_1
    return-object v2

    .line 17
    :catch_0
    move-exception v2

    .line 13
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    .line 21
    :cond_0
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public static getFieldValue(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .param p0, "object"    # Ljava/lang/Object;
    .param p1, "fieldName"    # Ljava/lang/String;

    .prologue
    .line 79
    invoke-static {p0, p1}, Lcom/amigo/internal/util/ReflectionUtils;->getDeclaredField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 81
    .local v1, "field":Ljava/lang/reflect/Field;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 84
    :try_start_0
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 90
    :goto_0
    return-object v2

    .line 86
    :catch_0
    move-exception v0

    .line 87
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 90
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static invokeMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p0, "object"    # Ljava/lang/Object;
    .param p1, "methodName"    # Ljava/lang/String;
    .param p3, "parameters"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 26
    .local p2, "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    invoke-static {p0, p1, p2}, Lcom/amigo/internal/util/ReflectionUtils;->getDeclaredMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 28
    .local v1, "method":Ljava/lang/reflect/Method;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 31
    if-eqz v1, :cond_0

    .line 32
    :try_start_0
    invoke-virtual {v1, p0, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v2

    .line 42
    :goto_0
    return-object v2

    .line 34
    :catch_0
    move-exception v0

    .line 35
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 42
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :cond_0
    :goto_1
    const/4 v2, 0x0

    goto :goto_0

    .line 36
    :catch_1
    move-exception v0

    .line 37
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1

    .line 38
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v0

    .line 39
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_1
.end method

.method public static setFieldValue(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .param p0, "object"    # Ljava/lang/Object;
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 63
    invoke-static {p0, p1}, Lcom/amigo/internal/util/ReflectionUtils;->getDeclaredField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 65
    .local v1, "field":Ljava/lang/reflect/Field;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 68
    :try_start_0
    invoke-virtual {v1, p0, p2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    .line 75
    :goto_0
    return-void

    .line 69
    :catch_0
    move-exception v0

    .line 70
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 71
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 72
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0
.end method
