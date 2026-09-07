.class Lax/Z2/e$j;
.super Lax/z3/q;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lax/Z2/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "j"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lax/z3/q<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field h:Z

.field i:Lax/Z2/j$f;

.field j:Z

.field final synthetic k:Lax/Z2/e;


# direct methods
.method public constructor <init>(Lax/Z2/e;)V
    .locals 2

    const/4 v0, 0x0

    .line 1
    sget-object v1, Lax/Z2/j$f;->q:Lax/Z2/j$f;

    invoke-direct {p0, p1, v0, v1}, Lax/Z2/e$j;-><init>(Lax/Z2/e;ZLax/Z2/j$f;)V

    return-void
.end method

.method public constructor <init>(Lax/Z2/e;ZLax/Z2/j$f;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lax/Z2/e$j;->k:Lax/Z2/e;

    .line 3
    sget-object p1, Lax/z3/q$e;->k0:Lax/z3/q$e;

    invoke-direct {p0, p1}, Lax/z3/q;-><init>(Lax/z3/q$e;)V

    .line 4
    iput-boolean p2, p0, Lax/Z2/e$j;->h:Z

    .line 5
    iput-object p3, p0, Lax/Z2/e$j;->i:Lax/Z2/j$f;

    return-void
.end method

.method private A(Lcom/alphainventor/filemanager/file/n;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lax/e3/j;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/alphainventor/filemanager/file/n;->E()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lax/f3/d0;->K(Ljava/lang/String;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    iget-object v0, p0, Lax/Z2/e$j;->k:Lax/Z2/e;

    .line 12
    .line 13
    invoke-static {v0}, Lax/Z2/e;->D0(Lax/Z2/e;)Lcom/alphainventor/filemanager/file/o;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-direct {p0, v0, p1}, Lax/Z2/e$j;->B(Lcom/alphainventor/filemanager/file/o;Lcom/alphainventor/filemanager/file/n;)Z

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    if-eqz p1, :cond_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 p1, 0x0

    .line 25
    return p1

    .line 26
    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 27
    return p1
    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
    .line 34
    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
.end method

.method private B(Lcom/alphainventor/filemanager/file/o;Lcom/alphainventor/filemanager/file/n;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lax/e3/j;
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Lcom/alphainventor/filemanager/file/n;->E()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p1, v0}, Lcom/alphainventor/filemanager/file/o;->a1(Ljava/lang/String;)Lcom/alphainventor/filemanager/file/n;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-interface {v0}, Lax/f3/b;->o()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const/4 v1, 0x1

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    return v1

    .line 17
    :cond_0
    invoke-virtual {p2}, Lcom/alphainventor/filemanager/file/n;->B()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-static {v0}, Lax/f3/d0;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {p2}, Lcom/alphainventor/filemanager/file/n;->U()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    invoke-static {v2, v0}, Lax/f3/d0;->Q(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {p2}, Lcom/alphainventor/filemanager/file/n;->E()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p2

    .line 37
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result p2

    .line 41
    if-nez p2, :cond_1

    .line 42
    .line 43
    invoke-virtual {p1, v0}, Lcom/alphainventor/filemanager/file/o;->a1(Ljava/lang/String;)Lcom/alphainventor/filemanager/file/n;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    invoke-interface {p1}, Lax/f3/b;->o()Z

    .line 48
    .line 49
    .line 50
    move-result p1

    .line 51
    if-eqz p1, :cond_1

    .line 52
    .line 53
    return v1

    .line 54
    :cond_1
    const/4 p1, 0x0

    .line 55
    return p1
    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    .line 77
    .line 78
    .line 79
    .line 80
    .line 81
    .line 82
    .line 83
    .line 84
    .line 85
    .line 86
    .line 87
    .line 88
    .line 89
    .line 90
    .line 91
    .line 92
    .line 93
    .line 94
    .line 95
    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
.end method

.method private C(Lcom/alphainventor/filemanager/file/n;Lcom/alphainventor/filemanager/file/n;Lax/z3/c;)Lax/Z2/e$h;
    .locals 3

    .line 1
    invoke-interface {p1}, Lax/f3/b;->isDirectory()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {v0}, Lax/z3/b;->c(Z)V

    .line 6
    .line 7
    .line 8
    :try_start_0
    iget-object v0, p0, Lax/Z2/e$j;->k:Lax/Z2/e;

    .line 9
    .line 10
    invoke-static {v0}, Lax/Z2/e;->M0(Lax/Z2/e;)Lcom/alphainventor/filemanager/file/o;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const/4 v1, 0x0

    .line 15
    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/alphainventor/filemanager/file/o;->i1(Lcom/alphainventor/filemanager/file/n;Lcom/alphainventor/filemanager/file/n;Lax/z3/c;Lax/l3/i;)V

    .line 16
    .line 17
    .line 18
    sget-object p3, Lax/Z2/e$h;->q:Lax/Z2/e$h;
    :try_end_0
    .catch Lax/e3/j; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lax/e3/a; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :catch_0
    sget-object p3, Lax/Z2/e$h;->Y:Lax/Z2/e$h;

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :catch_1
    sget-object p3, Lax/Z2/e$h;->X:Lax/Z2/e$h;

    .line 25
    .line 26
    :goto_0
    iget-object v0, p0, Lax/Z2/e$j;->k:Lax/Z2/e;

    .line 27
    .line 28
    invoke-virtual {p1}, Lcom/alphainventor/filemanager/file/n;->R()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-static {v0, v1}, Lax/Z2/e;->V0(Lax/Z2/e;Ljava/lang/String;)I

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    sget-object v1, Lax/Z2/e$h;->q:Lax/Z2/e$h;

    .line 37
    .line 38
    if-ne p3, v1, :cond_0

    .line 39
    .line 40
    iget-object p1, p0, Lax/Z2/e$j;->k:Lax/Z2/e;

    .line 41
    .line 42
    invoke-virtual {p1}, Lax/Z2/j;->w()Lax/Z2/v;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    sget-object p2, Lax/Z2/v$b;->q:Lax/Z2/v$b;

    .line 47
    .line 48
    invoke-virtual {p1, p2, v0}, Lax/Z2/v;->c(Lax/Z2/v$b;I)V

    .line 49
    .line 50
    .line 51
    iget-object p1, p0, Lax/Z2/e$j;->k:Lax/Z2/e;

    .line 52
    .line 53
    invoke-static {p1, v0}, Lax/Z2/e;->Z0(Lax/Z2/e;I)I

    .line 54
    .line 55
    .line 56
    iget-object p1, p0, Lax/Z2/e$j;->k:Lax/Z2/e;

    .line 57
    .line 58
    invoke-static {p1}, Lax/Z2/e;->c1(Lax/Z2/e;)I

    .line 59
    .line 60
    .line 61
    iget-object p1, p0, Lax/Z2/e$j;->k:Lax/Z2/e;

    .line 62
    .line 63
    invoke-virtual {p1}, Lax/Z2/j;->w()Lax/Z2/v;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    invoke-virtual {p1, v0}, Lax/Z2/v;->a(I)V

    .line 68
    .line 69
    .line 70
    goto :goto_1

    .line 71
    :cond_0
    iget-object v1, p0, Lax/Z2/e$j;->k:Lax/Z2/e;

    .line 72
    .line 73
    invoke-static {v1}, Lax/Z2/e;->f1(Lax/Z2/e;)I

    .line 74
    .line 75
    .line 76
    if-nez v0, :cond_1

    .line 77
    .line 78
    iget-object v1, p0, Lax/Z2/e$j;->k:Lax/Z2/e;

    .line 79
    .line 80
    const/4 v2, 0x1

    .line 81
    invoke-static {v1, v2}, Lax/Z2/e;->W0(Lax/Z2/e;Z)Z

    .line 82
    .line 83
    .line 84
    :cond_1
    iget-object v1, p0, Lax/Z2/e$j;->k:Lax/Z2/e;

    .line 85
    .line 86
    invoke-virtual {p2}, Lcom/alphainventor/filemanager/file/n;->B()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object p2

    .line 90
    invoke-static {v1, p1, p2, v0}, Lax/Z2/e;->w0(Lax/Z2/e;Lcom/alphainventor/filemanager/file/n;Ljava/lang/String;I)V

    .line 91
    .line 92
    .line 93
    :goto_1
    return-object p3
    .line 94
    .line 95
    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
    .line 168
    .line 169
    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    .line 175
    .line 176
    .line 177
    .line 178
    .line 179
    .line 180
    .line 181
    .line 182
    .line 183
    .line 184
    .line 185
    .line 186
    .line 187
    .line 188
    .line 189
    .line 190
    .line 191
    .line 192
    .line 193
    .line 194
    .line 195
    .line 196
    .line 197
    .line 198
    .line 199
    .line 200
    .line 201
    .line 202
    .line 203
    .line 204
    .line 205
    .line 206
    .line 207
    .line 208
    .line 209
    .line 210
    .line 211
    .line 212
    .line 213
    .line 214
    .line 215
    .line 216
    .line 217
    .line 218
    .line 219
    .line 220
    .line 221
    .line 222
    .line 223
    .line 224
    .line 225
    .line 226
    .line 227
    .line 228
    .line 229
    .line 230
    .line 231
    .line 232
    .line 233
    .line 234
    .line 235
    .line 236
    .line 237
    .line 238
    .line 239
    .line 240
    .line 241
    .line 242
    .line 243
    .line 244
    .line 245
    .line 246
    .line 247
    .line 248
    .line 249
    .line 250
    .line 251
    .line 252
    .line 253
    .line 254
    .line 255
    .line 256
    .line 257
    .line 258
    .line 259
    .line 260
    .line 261
    .line 262
    .line 263
    .line 264
    .line 265
    .line 266
    .line 267
    .line 268
    .line 269
    .line 270
    .line 271
    .line 272
    .line 273
    .line 274
    .line 275
    .line 276
    .line 277
    .line 278
    .line 279
    .line 280
    .line 281
    .line 282
    .line 283
    .line 284
    .line 285
    .line 286
    .line 287
    .line 288
    .line 289
    .line 290
    .line 291
    .line 292
    .line 293
    .line 294
    .line 295
    .line 296
    .line 297
    .line 298
    .line 299
    .line 300
    .line 301
    .line 302
    .line 303
    .line 304
    .line 305
    .line 306
    .line 307
    .line 308
    .line 309
    .line 310
    .line 311
    .line 312
    .line 313
    .line 314
    .line 315
    .line 316
    .line 317
    .line 318
    .line 319
    .line 320
    .line 321
    .line 322
    .line 323
    .line 324
    .line 325
    .line 326
    .line 327
    .line 328
    .line 329
    .line 330
    .line 331
    .line 332
    .line 333
    .line 334
    .line 335
    .line 336
    .line 337
    .line 338
    .line 339
    .line 340
    .line 341
    .line 342
    .line 343
    .line 344
    .line 345
    .line 346
    .line 347
    .line 348
    .line 349
    .line 350
    .line 351
    .line 352
    .line 353
    .line 354
    .line 355
    .line 356
    .line 357
    .line 358
    .line 359
    .line 360
    .line 361
    .line 362
    .line 363
    .line 364
    .line 365
    .line 366
    .line 367
    .line 368
    .line 369
    .line 370
    .line 371
    .line 372
    .line 373
    .line 374
    .line 375
    .line 376
    .line 377
    .line 378
    .line 379
    .line 380
    .line 381
    .line 382
    .line 383
    .line 384
    .line 385
    .line 386
    .line 387
    .line 388
    .line 389
    .line 390
    .line 391
    .line 392
    .line 393
    .line 394
    .line 395
    .line 396
    .line 397
    .line 398
    .line 399
    .line 400
    .line 401
    .line 402
    .line 403
    .line 404
    .line 405
    .line 406
    .line 407
    .line 408
    .line 409
    .line 410
    .line 411
    .line 412
    .line 413
    .line 414
    .line 415
    .line 416
    .line 417
    .line 418
    .line 419
    .line 420
    .line 421
    .line 422
    .line 423
    .line 424
    .line 425
    .line 426
    .line 427
    .line 428
    .line 429
    .line 430
    .line 431
    .line 432
    .line 433
    .line 434
    .line 435
    .line 436
    .line 437
    .line 438
    .line 439
    .line 440
    .line 441
    .line 442
    .line 443
    .line 444
    .line 445
    .line 446
    .line 447
    .line 448
    .line 449
    .line 450
    .line 451
    .line 452
.end method

.method private D()V
    .locals 3

    .line 1
    iget-object v0, p0, Lax/Z2/e$j;->k:Lax/Z2/e;

    .line 2
    .line 3
    invoke-static {v0}, Lax/Z2/e;->O0(Lax/Z2/e;)Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_3

    .line 8
    .line 9
    iget-object v0, p0, Lax/Z2/e$j;->k:Lax/Z2/e;

    .line 10
    .line 11
    invoke-static {v0}, Lax/Z2/e;->O0(Lax/Z2/e;)Ljava/util/List;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_0

    .line 20
    .line 21
    goto :goto_1

    .line 22
    :cond_0
    iget-object v0, p0, Lax/Z2/e$j;->k:Lax/Z2/e;

    .line 23
    .line 24
    invoke-static {v0}, Lax/Z2/e;->O0(Lax/Z2/e;)Ljava/util/List;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    if-eqz v1, :cond_2

    .line 37
    .line 38
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    check-cast v1, Lcom/alphainventor/filemanager/file/n;

    .line 43
    .line 44
    :try_start_0
    invoke-direct {p0, v1}, Lax/Z2/e$j;->z(Lcom/alphainventor/filemanager/file/n;)Z

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    if-nez v2, :cond_1

    .line 49
    .line 50
    iget-object v2, p0, Lax/Z2/e$j;->k:Lax/Z2/e;

    .line 51
    .line 52
    invoke-static {v2}, Lax/Z2/e;->M0(Lax/Z2/e;)Lcom/alphainventor/filemanager/file/o;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    invoke-virtual {v2, v1}, Lcom/alphainventor/filemanager/file/o;->q1(Lcom/alphainventor/filemanager/file/n;)V
    :try_end_0
    .catch Lax/e3/j; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    .line 58
    .line 59
    goto :goto_0

    .line 60
    :catch_0
    move-exception v1

    .line 61
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 62
    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_2
    iget-object v0, p0, Lax/Z2/e$j;->k:Lax/Z2/e;

    .line 66
    .line 67
    invoke-static {v0}, Lax/Z2/e;->O0(Lax/Z2/e;)Ljava/util/List;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 72
    .line 73
    .line 74
    :cond_3
    :goto_1
    return-void
    .line 75
    .line 76
    .line 77
    .line 78
    .line 79
    .line 80
    .line 81
    .line 82
    .line 83
    .line 84
    .line 85
    .line 86
    .line 87
    .line 88
    .line 89
    .line 90
    .line 91
    .line 92
    .line 93
    .line 94
    .line 95
    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
    .line 168
    .line 169
    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    .line 175
    .line 176
    .line 177
    .line 178
    .line 179
    .line 180
    .line 181
    .line 182
    .line 183
    .line 184
    .line 185
    .line 186
    .line 187
    .line 188
    .line 189
    .line 190
    .line 191
    .line 192
    .line 193
    .line 194
    .line 195
    .line 196
    .line 197
    .line 198
    .line 199
    .line 200
    .line 201
    .line 202
    .line 203
    .line 204
    .line 205
    .line 206
    .line 207
    .line 208
    .line 209
    .line 210
    .line 211
    .line 212
    .line 213
    .line 214
    .line 215
    .line 216
    .line 217
    .line 218
    .line 219
.end method

.method private E(Lcom/alphainventor/filemanager/file/n;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lax/e3/j;,
            Lax/e3/a;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/Stack;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lax/Z2/p$c;

    .line 7
    .line 8
    invoke-direct {v1, p1}, Lax/Z2/p$c;-><init>(Lcom/alphainventor/filemanager/file/n;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    const/4 p1, 0x1

    .line 15
    const/4 v1, 0x1

    .line 16
    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    if-lez v2, :cond_4

    .line 21
    .line 22
    iget-object v2, p0, Lax/Z2/e$j;->k:Lax/Z2/e;

    .line 23
    .line 24
    invoke-virtual {v2}, Lax/Z2/j;->t0()V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Lax/z3/q;->isCancelled()Z

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    if-nez v2, :cond_3

    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    check-cast v2, Lax/Z2/p$c;

    .line 38
    .line 39
    iget-object v3, v2, Lax/Z2/p$c;->a:Lcom/alphainventor/filemanager/file/n;

    .line 40
    .line 41
    invoke-interface {v3}, Lax/f3/b;->isDirectory()Z

    .line 42
    .line 43
    .line 44
    move-result v4

    .line 45
    const/4 v5, 0x0

    .line 46
    if-eqz v4, :cond_2

    .line 47
    .line 48
    iget-boolean v4, v2, Lax/Z2/p$c;->b:Z

    .line 49
    .line 50
    if-nez v4, :cond_1

    .line 51
    .line 52
    iput-boolean p1, v2, Lax/Z2/p$c;->b:Z

    .line 53
    .line 54
    invoke-virtual {v0, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    iget-object v2, p0, Lax/Z2/e$j;->k:Lax/Z2/e;

    .line 58
    .line 59
    invoke-static {v2}, Lax/Z2/e;->M0(Lax/Z2/e;)Lcom/alphainventor/filemanager/file/o;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    invoke-virtual {v2, v3}, Lcom/alphainventor/filemanager/file/o;->N(Lcom/alphainventor/filemanager/file/n;)Ljava/util/List;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    if-eqz v2, :cond_0

    .line 68
    .line 69
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 70
    .line 71
    .line 72
    move-result v3

    .line 73
    if-lez v3, :cond_0

    .line 74
    .line 75
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 80
    .line 81
    .line 82
    move-result v3

    .line 83
    if-eqz v3, :cond_0

    .line 84
    .line 85
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v3

    .line 89
    check-cast v3, Lcom/alphainventor/filemanager/file/n;

    .line 90
    .line 91
    new-instance v4, Lax/Z2/p$c;

    .line 92
    .line 93
    invoke-direct {v4, v3}, Lax/Z2/p$c;-><init>(Lcom/alphainventor/filemanager/file/n;)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v0, v4}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    goto :goto_1

    .line 100
    :cond_1
    :try_start_0
    iget-object v2, p0, Lax/Z2/e$j;->k:Lax/Z2/e;

    .line 101
    .line 102
    invoke-static {v2}, Lax/Z2/e;->Q0(Lax/Z2/e;)Ljava/util/HashSet;

    .line 103
    .line 104
    .line 105
    move-result-object v2

    .line 106
    invoke-virtual {v3}, Lcom/alphainventor/filemanager/file/n;->R()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v4

    .line 110
    invoke-virtual {v2, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 111
    .line 112
    .line 113
    move-result v2

    .line 114
    if-eqz v2, :cond_0

    .line 115
    .line 116
    invoke-direct {p0, v3}, Lax/Z2/e$j;->z(Lcom/alphainventor/filemanager/file/n;)Z

    .line 117
    .line 118
    .line 119
    move-result v2

    .line 120
    if-nez v2, :cond_0

    .line 121
    .line 122
    iget-object v2, p0, Lax/Z2/e$j;->k:Lax/Z2/e;

    .line 123
    .line 124
    invoke-static {v2}, Lax/Z2/e;->M0(Lax/Z2/e;)Lcom/alphainventor/filemanager/file/o;

    .line 125
    .line 126
    .line 127
    move-result-object v2

    .line 128
    invoke-virtual {v2, v3}, Lcom/alphainventor/filemanager/file/o;->q1(Lcom/alphainventor/filemanager/file/n;)V
    :try_end_0
    .catch Lax/e3/j; {:try_start_0 .. :try_end_0} :catch_0

    .line 129
    .line 130
    .line 131
    goto :goto_0

    .line 132
    :catch_0
    const/4 v1, 0x0

    .line 133
    goto :goto_3

    .line 134
    :cond_2
    :try_start_1
    iget-object v2, p0, Lax/Z2/e$j;->k:Lax/Z2/e;

    .line 135
    .line 136
    invoke-static {v2}, Lax/Z2/e;->Q0(Lax/Z2/e;)Ljava/util/HashSet;

    .line 137
    .line 138
    .line 139
    move-result-object v2

    .line 140
    invoke-virtual {v3}, Lcom/alphainventor/filemanager/file/n;->R()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v4

    .line 144
    invoke-virtual {v2, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 145
    .line 146
    .line 147
    move-result v2

    .line 148
    if-eqz v2, :cond_0

    .line 149
    .line 150
    iget-object v2, p0, Lax/Z2/e$j;->k:Lax/Z2/e;

    .line 151
    .line 152
    invoke-static {v2}, Lax/Z2/e;->M0(Lax/Z2/e;)Lcom/alphainventor/filemanager/file/o;

    .line 153
    .line 154
    .line 155
    move-result-object v2

    .line 156
    invoke-virtual {v2, v3}, Lcom/alphainventor/filemanager/file/o;->q1(Lcom/alphainventor/filemanager/file/n;)V

    .line 157
    .line 158
    .line 159
    iget-object v2, p0, Lax/Z2/e$j;->k:Lax/Z2/e;

    .line 160
    .line 161
    invoke-virtual {v2, v5}, Lax/Z2/j;->j0(Z)V
    :try_end_1
    .catch Lax/e3/j; {:try_start_1 .. :try_end_1} :catch_1

    .line 162
    .line 163
    .line 164
    goto/16 :goto_0

    .line 165
    .line 166
    :catch_1
    :try_start_2
    iget-object v2, p0, Lax/Z2/e$j;->k:Lax/Z2/e;

    .line 167
    .line 168
    invoke-static {v2}, Lax/Z2/e;->M0(Lax/Z2/e;)Lcom/alphainventor/filemanager/file/o;

    .line 169
    .line 170
    .line 171
    move-result-object v2

    .line 172
    invoke-virtual {v3}, Lcom/alphainventor/filemanager/file/n;->E()Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object v3

    .line 176
    invoke-virtual {v2, v3}, Lcom/alphainventor/filemanager/file/o;->a1(Ljava/lang/String;)Lcom/alphainventor/filemanager/file/n;

    .line 177
    .line 178
    .line 179
    move-result-object v2

    .line 180
    invoke-interface {v2}, Lax/f3/b;->o()Z

    .line 181
    .line 182
    .line 183
    move-result v2
    :try_end_2
    .catch Lax/e3/j; {:try_start_2 .. :try_end_2} :catch_2

    .line 184
    xor-int/2addr v2, p1

    .line 185
    goto :goto_2

    .line 186
    :catch_2
    nop

    .line 187
    const/4 v2, 0x0

    .line 188
    :goto_2
    if-nez v2, :cond_0

    .line 189
    .line 190
    const/4 v1, 0x0

    .line 191
    goto/16 :goto_0

    .line 192
    .line 193
    :cond_3
    new-instance p1, Lax/e3/a;

    .line 194
    .line 195
    invoke-direct {p1}, Lax/e3/a;-><init>()V

    .line 196
    .line 197
    .line 198
    throw p1

    .line 199
    :cond_4
    :goto_3
    return v1
    .line 200
    .line 201
    .line 202
    .line 203
    .line 204
    .line 205
    .line 206
    .line 207
    .line 208
    .line 209
    .line 210
    .line 211
    .line 212
    .line 213
    .line 214
    .line 215
    .line 216
    .line 217
    .line 218
    .line 219
    .line 220
    .line 221
    .line 222
    .line 223
    .line 224
    .line 225
    .line 226
    .line 227
    .line 228
    .line 229
    .line 230
    .line 231
    .line 232
    .line 233
    .line 234
    .line 235
    .line 236
    .line 237
    .line 238
    .line 239
    .line 240
    .line 241
    .line 242
    .line 243
    .line 244
    .line 245
    .line 246
    .line 247
    .line 248
    .line 249
    .line 250
    .line 251
    .line 252
    .line 253
    .line 254
    .line 255
    .line 256
    .line 257
    .line 258
    .line 259
    .line 260
    .line 261
    .line 262
    .line 263
    .line 264
    .line 265
    .line 266
    .line 267
    .line 268
    .line 269
    .line 270
    .line 271
    .line 272
    .line 273
    .line 274
    .line 275
    .line 276
    .line 277
    .line 278
    .line 279
    .line 280
    .line 281
    .line 282
    .line 283
    .line 284
    .line 285
    .line 286
    .line 287
    .line 288
    .line 289
    .line 290
    .line 291
    .line 292
    .line 293
    .line 294
    .line 295
    .line 296
    .line 297
    .line 298
    .line 299
    .line 300
    .line 301
    .line 302
    .line 303
    .line 304
    .line 305
    .line 306
    .line 307
    .line 308
    .line 309
    .line 310
    .line 311
    .line 312
    .line 313
    .line 314
    .line 315
    .line 316
    .line 317
    .line 318
    .line 319
    .line 320
    .line 321
    .line 322
    .line 323
    .line 324
    .line 325
    .line 326
    .line 327
    .line 328
    .line 329
    .line 330
    .line 331
    .line 332
    .line 333
    .line 334
    .line 335
    .line 336
    .line 337
    .line 338
    .line 339
    .line 340
    .line 341
    .line 342
    .line 343
    .line 344
    .line 345
    .line 346
    .line 347
    .line 348
    .line 349
    .line 350
    .line 351
    .line 352
    .line 353
    .line 354
    .line 355
    .line 356
    .line 357
    .line 358
    .line 359
    .line 360
    .line 361
    .line 362
    .line 363
    .line 364
    .line 365
    .line 366
    .line 367
    .line 368
    .line 369
    .line 370
    .line 371
    .line 372
    .line 373
    .line 374
    .line 375
    .line 376
    .line 377
    .line 378
    .line 379
    .line 380
    .line 381
    .line 382
    .line 383
    .line 384
    .line 385
    .line 386
    .line 387
    .line 388
    .line 389
    .line 390
    .line 391
    .line 392
    .line 393
    .line 394
    .line 395
    .line 396
    .line 397
    .line 398
    .line 399
    .line 400
    .line 401
    .line 402
    .line 403
    .line 404
    .line 405
.end method

.method private F(Lax/Z2/e$m;)V
    .locals 4

    .line 1
    iget-boolean v0, p1, Lax/Z2/e$m;->b:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lax/Z2/e$j;->k:Lax/Z2/e;

    .line 7
    .line 8
    invoke-static {v0}, Lax/Z2/e;->I0(Lax/Z2/e;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_2

    .line 13
    .line 14
    iget-object v0, p1, Lax/Z2/e$m;->a:Lcom/alphainventor/filemanager/file/n;

    .line 15
    .line 16
    :try_start_0
    iget-object v1, p0, Lax/Z2/e$j;->k:Lax/Z2/e;

    .line 17
    .line 18
    invoke-static {v1}, Lax/Z2/e;->O0(Lax/Z2/e;)Ljava/util/List;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-eqz v1, :cond_1

    .line 27
    .line 28
    iget-object v1, p0, Lax/Z2/e$j;->k:Lax/Z2/e;

    .line 29
    .line 30
    invoke-static {v1}, Lax/Z2/e;->O0(Lax/Z2/e;)Ljava/util/List;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    iget-object v1, p0, Lax/Z2/e$j;->k:Lax/Z2/e;

    .line 38
    .line 39
    invoke-virtual {v1}, Lax/Z2/j;->w()Lax/Z2/v;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-virtual {v1}, Lax/Z2/v;->n()I

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    iget-object v2, p0, Lax/Z2/e$j;->k:Lax/Z2/e;

    .line 48
    .line 49
    invoke-virtual {v2}, Lax/Z2/j;->w()Lax/Z2/v;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    invoke-virtual {v2}, Lax/Z2/v;->C()I

    .line 54
    .line 55
    .line 56
    move-result v2

    .line 57
    iget v3, p1, Lax/Z2/e$m;->c:I

    .line 58
    .line 59
    if-ne v1, v3, :cond_1

    .line 60
    .line 61
    iget p1, p1, Lax/Z2/e$m;->d:I

    .line 62
    .line 63
    if-ne v2, p1, :cond_1

    .line 64
    .line 65
    invoke-direct {p0, v0}, Lax/Z2/e$j;->z(Lcom/alphainventor/filemanager/file/n;)Z

    .line 66
    .line 67
    .line 68
    move-result p1

    .line 69
    if-nez p1, :cond_1

    .line 70
    .line 71
    iget-object p1, p0, Lax/Z2/e$j;->k:Lax/Z2/e;

    .line 72
    .line 73
    invoke-static {p1}, Lax/Z2/e;->M0(Lax/Z2/e;)Lcom/alphainventor/filemanager/file/o;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    invoke-virtual {p1, v0}, Lcom/alphainventor/filemanager/file/o;->q1(Lcom/alphainventor/filemanager/file/n;)V
    :try_end_0
    .catch Lax/e3/j; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    .line 79
    .line 80
    goto :goto_0

    .line 81
    :catch_0
    move-exception p1

    .line 82
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 83
    .line 84
    .line 85
    :cond_1
    :goto_0
    return-void

    .line 86
    :cond_2
    invoke-static {}, Lax/z3/b;->f()V

    .line 87
    .line 88
    .line 89
    return-void
    .line 90
    .line 91
    .line 92
    .line 93
    .line 94
    .line 95
    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
.end method

.method private I(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    const-string v0, "/sdcard/"

    .line 4
    .line 5
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const-string v0, "/sdcard"

    .line 12
    .line 13
    invoke-static {}, Lax/U2/e;->v()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    :cond_0
    return-object p1
    .line 22
.end method

.method private J()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lax/Z2/e$j;->k:Lax/Z2/e;

    .line 2
    .line 3
    invoke-static {v0}, Lax/Z2/e;->J0(Lax/Z2/e;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    const/4 v2, 0x1

    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    iget-object v0, p0, Lax/Z2/e$j;->k:Lax/Z2/e;

    .line 12
    .line 13
    invoke-virtual {v0}, Lax/Z2/j;->w()Lax/Z2/v;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0}, Lax/Z2/v;->k()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    iget-object v3, p0, Lax/Z2/e$j;->k:Lax/Z2/e;

    .line 22
    .line 23
    invoke-virtual {v3}, Lax/Z2/j;->w()Lax/Z2/v;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    invoke-virtual {v3}, Lax/Z2/v;->j()I

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    add-int/2addr v3, v2

    .line 32
    if-ne v0, v3, :cond_0

    .line 33
    .line 34
    return v2

    .line 35
    :cond_0
    return v1

    .line 36
    :cond_1
    iget-object v0, p0, Lax/Z2/e$j;->k:Lax/Z2/e;

    .line 37
    .line 38
    invoke-virtual {v0}, Lax/Z2/j;->w()Lax/Z2/v;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-virtual {v0}, Lax/Z2/v;->K()I

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    iget-object v3, p0, Lax/Z2/e$j;->k:Lax/Z2/e;

    .line 47
    .line 48
    invoke-virtual {v3}, Lax/Z2/j;->w()Lax/Z2/v;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    invoke-virtual {v3}, Lax/Z2/v;->x()I

    .line 53
    .line 54
    .line 55
    move-result v3

    .line 56
    add-int/2addr v3, v2

    .line 57
    if-ne v0, v3, :cond_2

    .line 58
    .line 59
    return v2

    .line 60
    :cond_2
    return v1
    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
.end method

.method private K()Z
    .locals 9

    .line 1
    iget-object v0, p0, Lax/Z2/e$j;->k:Lax/Z2/e;

    .line 2
    .line 3
    invoke-static {v0}, Lax/Z2/e;->I0(Lax/Z2/e;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    const/4 v2, 0x1

    .line 9
    const-wide/32 v3, 0x200000

    .line 10
    .line 11
    .line 12
    if-eqz v0, :cond_2

    .line 13
    .line 14
    iget-object v0, p0, Lax/Z2/e$j;->k:Lax/Z2/e;

    .line 15
    .line 16
    invoke-static {v0}, Lax/Z2/e;->J0(Lax/Z2/e;)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    iget-object v0, p0, Lax/Z2/e$j;->k:Lax/Z2/e;

    .line 24
    .line 25
    invoke-static {v0}, Lax/Z2/e;->h1(Lax/Z2/e;)Ljava/lang/Long;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    iget-object v0, p0, Lax/Z2/e$j;->k:Lax/Z2/e;

    .line 32
    .line 33
    invoke-static {v0}, Lax/Z2/e;->h1(Lax/Z2/e;)Ljava/lang/Long;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 38
    .line 39
    .line 40
    move-result-wide v5

    .line 41
    cmp-long v0, v5, v3

    .line 42
    .line 43
    if-gez v0, :cond_1

    .line 44
    .line 45
    return v2

    .line 46
    :cond_1
    return v1

    .line 47
    :cond_2
    :goto_0
    iget-object v0, p0, Lax/Z2/e$j;->k:Lax/Z2/e;

    .line 48
    .line 49
    invoke-static {v0}, Lax/Z2/e;->h1(Lax/Z2/e;)Ljava/lang/Long;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    if-eqz v0, :cond_3

    .line 54
    .line 55
    iget-object v0, p0, Lax/Z2/e$j;->k:Lax/Z2/e;

    .line 56
    .line 57
    invoke-static {v0}, Lax/Z2/e;->h1(Lax/Z2/e;)Ljava/lang/Long;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 62
    .line 63
    .line 64
    move-result-wide v5

    .line 65
    iget-object v0, p0, Lax/Z2/e$j;->k:Lax/Z2/e;

    .line 66
    .line 67
    invoke-virtual {v0}, Lax/Z2/j;->w()Lax/Z2/v;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    invoke-virtual {v0}, Lax/Z2/v;->L()J

    .line 72
    .line 73
    .line 74
    move-result-wide v7

    .line 75
    add-long/2addr v7, v3

    .line 76
    cmp-long v0, v5, v7

    .line 77
    .line 78
    if-gez v0, :cond_3

    .line 79
    .line 80
    return v2

    .line 81
    :cond_3
    return v1
    .line 82
    .line 83
    .line 84
    .line 85
    .line 86
    .line 87
    .line 88
    .line 89
    .line 90
    .line 91
    .line 92
    .line 93
    .line 94
    .line 95
    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
    .line 168
    .line 169
    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    .line 175
    .line 176
    .line 177
    .line 178
    .line 179
    .line 180
    .line 181
    .line 182
    .line 183
    .line 184
    .line 185
    .line 186
    .line 187
    .line 188
    .line 189
    .line 190
    .line 191
    .line 192
    .line 193
    .line 194
    .line 195
    .line 196
    .line 197
    .line 198
    .line 199
    .line 200
    .line 201
    .line 202
    .line 203
    .line 204
    .line 205
    .line 206
    .line 207
    .line 208
    .line 209
    .line 210
    .line 211
    .line 212
    .line 213
    .line 214
    .line 215
    .line 216
    .line 217
    .line 218
    .line 219
.end method

.method private O(Lcom/alphainventor/filemanager/file/n;Lcom/alphainventor/filemanager/file/n;Lax/z3/c;)Lax/Z2/e$h;
    .locals 11

    .line 1
    const/4 v10, 0x1

    .line 2
    :try_start_0
    iget-object v0, p0, Lax/Z2/e$j;->k:Lax/Z2/e;

    .line 3
    .line 4
    invoke-static {v0}, Lax/Z2/e;->I0(Lax/Z2/e;)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    const-wide/32 v3, 0x1dcd6500

    .line 9
    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    if-eqz v0, :cond_5

    .line 13
    .line 14
    iget-object v0, p0, Lax/Z2/e$j;->k:Lax/Z2/e;

    .line 15
    .line 16
    invoke-static {v0}, Lax/Z2/e;->J0(Lax/Z2/e;)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-nez v0, :cond_5

    .line 21
    .line 22
    iget-object v0, p0, Lax/Z2/e$j;->k:Lax/Z2/e;

    .line 23
    .line 24
    invoke-static {v0}, Lax/Z2/e;->V1(Lax/Z2/e;)I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-eqz v0, :cond_0

    .line 29
    .line 30
    iget-object v0, p0, Lax/Z2/e$j;->k:Lax/Z2/e;

    .line 31
    .line 32
    invoke-static {v0, p1}, Lax/Z2/e;->k1(Lax/Z2/e;Lcom/alphainventor/filemanager/file/n;)Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-eqz v0, :cond_0

    .line 37
    .line 38
    invoke-interface {p1}, Lax/f3/b;->o()Z

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    if-nez v0, :cond_0

    .line 43
    .line 44
    iget-object v0, p0, Lax/Z2/e$j;->k:Lax/Z2/e;

    .line 45
    .line 46
    invoke-virtual {v0}, Lax/Z2/j;->w()Lax/Z2/v;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    sget-object v1, Lax/Z2/v$b;->Y:Lax/Z2/v$b;

    .line 51
    .line 52
    invoke-virtual {v0, v1, v10}, Lax/Z2/v;->c(Lax/Z2/v$b;I)V

    .line 53
    .line 54
    .line 55
    iget-object v0, p0, Lax/Z2/e$j;->k:Lax/Z2/e;

    .line 56
    .line 57
    invoke-virtual {v0}, Lax/Z2/j;->w()Lax/Z2/v;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    invoke-virtual {v0, v10}, Lax/Z2/v;->a(I)V

    .line 62
    .line 63
    .line 64
    invoke-static {}, Lax/Z2/e;->l1()Ljava/util/logging/Logger;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    const-string v1, "Thumbnail file skipped!!"

    .line 69
    .line 70
    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    sget-object v0, Lax/Z2/e$h;->q:Lax/Z2/e$h;

    .line 74
    .line 75
    return-object v0

    .line 76
    :catch_0
    move-exception v0

    .line 77
    goto/16 :goto_5

    .line 78
    .line 79
    :cond_0
    invoke-virtual {p2}, Lcom/alphainventor/filemanager/file/n;->Q()Lax/U2/f;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    invoke-static {v0}, Lax/U2/f;->x0(Lax/U2/f;)Z

    .line 84
    .line 85
    .line 86
    move-result v5

    .line 87
    if-eqz v5, :cond_1

    .line 88
    .line 89
    const/4 v5, 0x1

    .line 90
    goto :goto_1

    .line 91
    :cond_1
    invoke-static {v0}, Lax/U2/f;->s0(Lax/U2/f;)Z

    .line 92
    .line 93
    .line 94
    move-result v5

    .line 95
    if-eqz v5, :cond_3

    .line 96
    .line 97
    :cond_2
    const/4 v5, 0x0

    .line 98
    goto :goto_1

    .line 99
    :cond_3
    sget-object v5, Lax/U2/f;->u0:Lax/U2/f;

    .line 100
    .line 101
    if-ne v5, v0, :cond_4

    .line 102
    .line 103
    iget-object v0, p0, Lax/Z2/e$j;->k:Lax/Z2/e;

    .line 104
    .line 105
    invoke-virtual {v0}, Lax/Z2/j;->w()Lax/Z2/v;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    invoke-virtual {v0}, Lax/Z2/v;->L()J

    .line 110
    .line 111
    .line 112
    move-result-wide v5

    .line 113
    cmp-long v0, v5, v3

    .line 114
    .line 115
    if-lez v0, :cond_2

    .line 116
    .line 117
    invoke-direct {p0}, Lax/Z2/e$j;->J()Z

    .line 118
    .line 119
    .line 120
    move-result v1

    .line 121
    :goto_0
    move v5, v1

    .line 122
    goto :goto_1

    .line 123
    :cond_4
    invoke-direct {p0}, Lax/Z2/e$j;->J()Z

    .line 124
    .line 125
    .line 126
    move-result v1

    .line 127
    goto :goto_0

    .line 128
    :goto_1
    iget-object v0, p0, Lax/Z2/e$j;->k:Lax/Z2/e;

    .line 129
    .line 130
    invoke-static {v0}, Lax/Z2/e;->M0(Lax/Z2/e;)Lcom/alphainventor/filemanager/file/o;

    .line 131
    .line 132
    .line 133
    move-result-object v1

    .line 134
    iget-object v0, p0, Lax/Z2/e$j;->k:Lax/Z2/e;

    .line 135
    .line 136
    invoke-static {v0}, Lax/Z2/e;->D0(Lax/Z2/e;)Lcom/alphainventor/filemanager/file/o;

    .line 137
    .line 138
    .line 139
    move-result-object v3

    .line 140
    iget-object v0, p0, Lax/Z2/e$j;->k:Lax/Z2/e;

    .line 141
    .line 142
    invoke-virtual {v0}, Lax/Z2/j;->T()Lax/l3/i;

    .line 143
    .line 144
    .line 145
    move-result-object v7

    .line 146
    move-object v2, p1

    .line 147
    move-object v4, p2

    .line 148
    move-object v6, p3

    .line 149
    invoke-virtual/range {v1 .. v7}, Lcom/alphainventor/filemanager/file/o;->P(Lcom/alphainventor/filemanager/file/n;Lcom/alphainventor/filemanager/file/o;Lcom/alphainventor/filemanager/file/n;ZLax/z3/c;Lax/l3/i;)V

    .line 150
    .line 151
    .line 152
    iget-object v0, p0, Lax/Z2/e$j;->k:Lax/Z2/e;

    .line 153
    .line 154
    invoke-static {v0}, Lax/Z2/e;->j1(Lax/Z2/e;)Lax/Y7/q;

    .line 155
    .line 156
    .line 157
    move-result-object v0

    .line 158
    invoke-virtual {v0, p2}, Lax/Y7/q;->add(Ljava/lang/Object;)Z

    .line 159
    .line 160
    .line 161
    sget-object v0, Lax/Z2/e$h;->q:Lax/Z2/e$h;

    .line 162
    .line 163
    goto/16 :goto_b

    .line 164
    .line 165
    :cond_5
    invoke-direct {p0}, Lax/Z2/e$j;->J()Z

    .line 166
    .line 167
    .line 168
    move-result v0

    .line 169
    invoke-virtual {p2}, Lcom/alphainventor/filemanager/file/n;->Q()Lax/U2/f;

    .line 170
    .line 171
    .line 172
    move-result-object v5

    .line 173
    invoke-static {v5}, Lax/U2/f;->x0(Lax/U2/f;)Z

    .line 174
    .line 175
    .line 176
    move-result v6

    .line 177
    if-eqz v6, :cond_6

    .line 178
    .line 179
    :goto_2
    const/4 v7, 0x0

    .line 180
    goto :goto_4

    .line 181
    :cond_6
    invoke-static {v5}, Lax/U2/f;->s0(Lax/U2/f;)Z

    .line 182
    .line 183
    .line 184
    move-result v6

    .line 185
    if-eqz v6, :cond_7

    .line 186
    .line 187
    goto :goto_2

    .line 188
    :cond_7
    iget-object v6, p0, Lax/Z2/e$j;->k:Lax/Z2/e;

    .line 189
    .line 190
    invoke-virtual {v6}, Lax/Z2/j;->w()Lax/Z2/v;

    .line 191
    .line 192
    .line 193
    move-result-object v6

    .line 194
    invoke-virtual {v6}, Lax/Z2/v;->L()J

    .line 195
    .line 196
    .line 197
    move-result-wide v6

    .line 198
    cmp-long v8, v6, v3

    .line 199
    .line 200
    if-lez v8, :cond_8

    .line 201
    .line 202
    goto :goto_3

    .line 203
    :cond_8
    sget-object v3, Lax/U2/f;->u0:Lax/U2/f;

    .line 204
    .line 205
    if-ne v3, v5, :cond_9

    .line 206
    .line 207
    goto :goto_2

    .line 208
    :cond_9
    :goto_3
    move v7, v0

    .line 209
    :goto_4
    iget-object v1, p0, Lax/Z2/e$j;->k:Lax/Z2/e;

    .line 210
    .line 211
    invoke-static {v1}, Lax/Z2/e;->M0(Lax/Z2/e;)Lcom/alphainventor/filemanager/file/o;

    .line 212
    .line 213
    .line 214
    move-result-object v1

    .line 215
    iget-object v3, p0, Lax/Z2/e$j;->k:Lax/Z2/e;

    .line 216
    .line 217
    invoke-static {v3}, Lax/Z2/e;->D0(Lax/Z2/e;)Lcom/alphainventor/filemanager/file/o;

    .line 218
    .line 219
    .line 220
    move-result-object v3

    .line 221
    iget-object v4, p0, Lax/Z2/e$j;->k:Lax/Z2/e;

    .line 222
    .line 223
    invoke-virtual {v4}, Lax/Z2/j;->T()Lax/l3/i;

    .line 224
    .line 225
    .line 226
    move-result-object v9

    .line 227
    const/4 v5, 0x1

    .line 228
    const/4 v6, 0x1

    .line 229
    move-object v2, p1

    .line 230
    move-object v4, p2

    .line 231
    move-object v8, p3

    .line 232
    invoke-virtual/range {v1 .. v9}, Lcom/alphainventor/filemanager/file/o;->j(Lcom/alphainventor/filemanager/file/n;Lcom/alphainventor/filemanager/file/o;Lcom/alphainventor/filemanager/file/n;ZZZLax/z3/c;Lax/l3/i;)V

    .line 233
    .line 234
    .line 235
    iget-object v1, p0, Lax/Z2/e$j;->k:Lax/Z2/e;

    .line 236
    .line 237
    invoke-static {v1}, Lax/Z2/e;->I0(Lax/Z2/e;)Z

    .line 238
    .line 239
    .line 240
    move-result v1

    .line 241
    if-eqz v1, :cond_a

    .line 242
    .line 243
    iget-object v1, p0, Lax/Z2/e$j;->k:Lax/Z2/e;

    .line 244
    .line 245
    invoke-static {v1}, Lax/Z2/e;->Q0(Lax/Z2/e;)Ljava/util/HashSet;

    .line 246
    .line 247
    .line 248
    move-result-object v1

    .line 249
    invoke-virtual {p1}, Lcom/alphainventor/filemanager/file/n;->R()Ljava/lang/String;

    .line 250
    .line 251
    .line 252
    move-result-object v3

    .line 253
    invoke-virtual {v1, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 254
    .line 255
    .line 256
    iget-object v1, p0, Lax/Z2/e$j;->k:Lax/Z2/e;

    .line 257
    .line 258
    invoke-static {v1}, Lax/Z2/e;->o1(Lax/Z2/e;)I

    .line 259
    .line 260
    .line 261
    if-eqz v0, :cond_a

    .line 262
    .line 263
    invoke-direct {p0, p2}, Lax/Z2/e$j;->y(Lcom/alphainventor/filemanager/file/n;)V

    .line 264
    .line 265
    .line 266
    :cond_a
    iget-object v1, p0, Lax/Z2/e$j;->k:Lax/Z2/e;

    .line 267
    .line 268
    invoke-static {v1}, Lax/Z2/e;->j1(Lax/Z2/e;)Lax/Y7/q;

    .line 269
    .line 270
    .line 271
    move-result-object v1

    .line 272
    invoke-virtual {v1, p2}, Lax/Y7/q;->add(Ljava/lang/Object;)Z

    .line 273
    .line 274
    .line 275
    if-eqz v0, :cond_b

    .line 276
    .line 277
    iget-object v0, p0, Lax/Z2/e$j;->k:Lax/Z2/e;

    .line 278
    .line 279
    invoke-static {v0}, Lax/Z2/e;->p1(Lax/Z2/e;)V

    .line 280
    .line 281
    .line 282
    :cond_b
    sget-object v0, Lax/Z2/e$h;->q:Lax/Z2/e$h;
    :try_end_0
    .catch Lax/e3/j; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lax/e3/a; {:try_start_0 .. :try_end_0} :catch_1

    .line 283
    .line 284
    goto/16 :goto_b

    .line 285
    .line 286
    :catch_1
    sget-object v0, Lax/Z2/e$h;->Y:Lax/Z2/e$h;

    .line 287
    .line 288
    goto/16 :goto_b

    .line 289
    .line 290
    :goto_5
    iget-object v1, p0, Lax/Z2/e$j;->k:Lax/Z2/e;

    .line 291
    .line 292
    invoke-virtual {v1, v0}, Lax/Z2/j;->o0(Lax/e3/j;)I

    .line 293
    .line 294
    .line 295
    move-result v1

    .line 296
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 297
    .line 298
    .line 299
    const/16 v3, 0x32

    .line 300
    .line 301
    if-ne v1, v3, :cond_c

    .line 302
    .line 303
    sget-object v5, Lax/Z2/e$h;->Z:Lax/Z2/e$h;

    .line 304
    .line 305
    goto :goto_6

    .line 306
    :cond_c
    sget-object v5, Lax/Z2/e$h;->X:Lax/Z2/e$h;

    .line 307
    .line 308
    :goto_6
    if-eqz p1, :cond_d

    .line 309
    .line 310
    new-instance v6, Ljava/lang/StringBuilder;

    .line 311
    .line 312
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 313
    .line 314
    .line 315
    const-string v7, "sourceLocation : "

    .line 316
    .line 317
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 318
    .line 319
    .line 320
    invoke-virtual {p1}, Lcom/alphainventor/filemanager/file/n;->S()Lax/f3/K;

    .line 321
    .line 322
    .line 323
    move-result-object v7

    .line 324
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 325
    .line 326
    .line 327
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 328
    .line 329
    .line 330
    move-result-object v6

    .line 331
    goto :goto_7

    .line 332
    :cond_d
    const-string v6, "sourceFile null"

    .line 333
    .line 334
    :goto_7
    if-eqz p2, :cond_e

    .line 335
    .line 336
    new-instance v7, Ljava/lang/StringBuilder;

    .line 337
    .line 338
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 339
    .line 340
    .line 341
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 342
    .line 343
    .line 344
    const-string v6, ",targetLocation : "

    .line 345
    .line 346
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 347
    .line 348
    .line 349
    invoke-virtual {p2}, Lcom/alphainventor/filemanager/file/n;->S()Lax/f3/K;

    .line 350
    .line 351
    .line 352
    move-result-object v6

    .line 353
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 354
    .line 355
    .line 356
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 357
    .line 358
    .line 359
    move-result-object v6

    .line 360
    goto :goto_8

    .line 361
    :cond_e
    new-instance v7, Ljava/lang/StringBuilder;

    .line 362
    .line 363
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 364
    .line 365
    .line 366
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 367
    .line 368
    .line 369
    const-string v6, ",targetFile null"

    .line 370
    .line 371
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 372
    .line 373
    .line 374
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 375
    .line 376
    .line 377
    move-result-object v6

    .line 378
    :goto_8
    const/16 v7, 0xa

    .line 379
    .line 380
    if-eq v1, v7, :cond_1c

    .line 381
    .line 382
    const/16 v7, 0x64

    .line 383
    .line 384
    if-eq v1, v7, :cond_1c

    .line 385
    .line 386
    if-ne v1, v3, :cond_f

    .line 387
    .line 388
    goto/16 :goto_a

    .line 389
    .line 390
    :cond_f
    const/16 v3, 0xa0

    .line 391
    .line 392
    if-ne v1, v3, :cond_10

    .line 393
    .line 394
    goto/16 :goto_a

    .line 395
    .line 396
    :cond_10
    const/16 v3, 0x3c

    .line 397
    .line 398
    if-eq v1, v3, :cond_1b

    .line 399
    .line 400
    const/16 v3, 0x46

    .line 401
    .line 402
    if-eq v1, v3, :cond_1b

    .line 403
    .line 404
    const/16 v3, 0x28

    .line 405
    .line 406
    if-eq v1, v3, :cond_1b

    .line 407
    .line 408
    const/16 v7, 0x1e

    .line 409
    .line 410
    if-eq v1, v7, :cond_1b

    .line 411
    .line 412
    const/16 v7, 0x5a

    .line 413
    .line 414
    if-eq v1, v7, :cond_1b

    .line 415
    .line 416
    const/16 v7, 0x96

    .line 417
    .line 418
    if-ne v1, v7, :cond_11

    .line 419
    .line 420
    goto/16 :goto_9

    .line 421
    .line 422
    :cond_11
    const/16 v7, 0x50

    .line 423
    .line 424
    if-ne v1, v7, :cond_12

    .line 425
    .line 426
    invoke-static {}, Lax/sb/c;->h()Lax/sb/b;

    .line 427
    .line 428
    .line 429
    move-result-object v1

    .line 430
    invoke-virtual {v1}, Lax/sb/b;->g()Lax/sb/b;

    .line 431
    .line 432
    .line 433
    move-result-object v1

    .line 434
    const-string v3, "UNSUPPORTED ENCRYPTION : PASTE FAILED"

    .line 435
    .line 436
    invoke-virtual {v1, v3}, Lax/sb/b;->d(Ljava/lang/String;)Lax/sb/b;

    .line 437
    .line 438
    .line 439
    move-result-object v1

    .line 440
    invoke-virtual {v1, v6}, Lax/sb/b;->h(Ljava/lang/Object;)Lax/sb/b;

    .line 441
    .line 442
    .line 443
    move-result-object v1

    .line 444
    invoke-virtual {v1, v0}, Lax/sb/b;->m(Ljava/lang/Throwable;)Lax/sb/b;

    .line 445
    .line 446
    .line 447
    move-result-object v0

    .line 448
    invoke-virtual {v0}, Lax/sb/b;->i()V

    .line 449
    .line 450
    .line 451
    goto/16 :goto_a

    .line 452
    .line 453
    :cond_12
    const/16 v7, 0x14

    .line 454
    .line 455
    if-ne v1, v7, :cond_13

    .line 456
    .line 457
    invoke-static {}, Lax/sb/c;->h()Lax/sb/b;

    .line 458
    .line 459
    .line 460
    move-result-object v1

    .line 461
    invoke-virtual {v1}, Lax/sb/b;->g()Lax/sb/b;

    .line 462
    .line 463
    .line 464
    move-result-object v1

    .line 465
    const-string v3, "PASTE FAILED : FILE NOT FOUND"

    .line 466
    .line 467
    invoke-virtual {v1, v3}, Lax/sb/b;->d(Ljava/lang/String;)Lax/sb/b;

    .line 468
    .line 469
    .line 470
    move-result-object v1

    .line 471
    invoke-virtual {v1, v6}, Lax/sb/b;->h(Ljava/lang/Object;)Lax/sb/b;

    .line 472
    .line 473
    .line 474
    move-result-object v1

    .line 475
    invoke-virtual {v1, v0}, Lax/sb/b;->m(Ljava/lang/Throwable;)Lax/sb/b;

    .line 476
    .line 477
    .line 478
    move-result-object v0

    .line 479
    invoke-virtual {v0}, Lax/sb/b;->i()V

    .line 480
    .line 481
    .line 482
    goto/16 :goto_a

    .line 483
    .line 484
    :cond_13
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 485
    .line 486
    .line 487
    move-result-object v1

    .line 488
    if-eqz v1, :cond_16

    .line 489
    .line 490
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 491
    .line 492
    .line 493
    move-result-object v1

    .line 494
    const-string v7, "CreateDocument Parent not exists"

    .line 495
    .line 496
    invoke-virtual {v1, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 497
    .line 498
    .line 499
    move-result v1

    .line 500
    if-eqz v1, :cond_16

    .line 501
    .line 502
    iget-object v0, p0, Lax/Z2/e$j;->k:Lax/Z2/e;

    .line 503
    .line 504
    invoke-static {v0}, Lax/Z2/e;->B0(Lax/Z2/e;)Ljava/util/HashMap;

    .line 505
    .line 506
    .line 507
    move-result-object v0

    .line 508
    invoke-virtual {p1}, Lcom/alphainventor/filemanager/file/n;->E()Ljava/lang/String;

    .line 509
    .line 510
    .line 511
    move-result-object v1

    .line 512
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 513
    .line 514
    .line 515
    move-result-object v0

    .line 516
    check-cast v0, Ljava/lang/String;

    .line 517
    .line 518
    if-eqz p2, :cond_15

    .line 519
    .line 520
    invoke-virtual {p2}, Lcom/alphainventor/filemanager/file/n;->B()Ljava/lang/String;

    .line 521
    .line 522
    .line 523
    move-result-object v1

    .line 524
    invoke-static {v1}, Lax/f3/d0;->M(Ljava/lang/String;)Z

    .line 525
    .line 526
    .line 527
    move-result v1

    .line 528
    if-eqz v1, :cond_14

    .line 529
    .line 530
    invoke-virtual {p2}, Lcom/alphainventor/filemanager/file/n;->U()Ljava/lang/String;

    .line 531
    .line 532
    .line 533
    move-result-object v1

    .line 534
    invoke-static {v1}, Lax/f3/d0;->h(Ljava/lang/String;)Ljava/lang/String;

    .line 535
    .line 536
    .line 537
    move-result-object v1

    .line 538
    invoke-static {v1}, Lax/f3/d0;->M(Ljava/lang/String;)Z

    .line 539
    .line 540
    .line 541
    move-result v1

    .line 542
    if-nez v1, :cond_15

    .line 543
    .line 544
    :cond_14
    iget-object v0, p0, Lax/Z2/e$j;->k:Lax/Z2/e;

    .line 545
    .line 546
    invoke-virtual {v0, v3}, Lax/Z2/j;->p0(I)V

    .line 547
    .line 548
    .line 549
    goto/16 :goto_a

    .line 550
    .line 551
    :cond_15
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    .line 552
    .line 553
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 554
    .line 555
    .line 556
    const-string v3, "target:"

    .line 557
    .line 558
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 559
    .line 560
    .line 561
    iget-object v3, p0, Lax/Z2/e$j;->k:Lax/Z2/e;

    .line 562
    .line 563
    invoke-static {v3}, Lax/Z2/e;->q1(Lax/Z2/e;)Lcom/alphainventor/filemanager/file/n;

    .line 564
    .line 565
    .line 566
    move-result-object v3

    .line 567
    invoke-virtual {v3}, Lcom/alphainventor/filemanager/file/n;->E()Ljava/lang/String;

    .line 568
    .line 569
    .line 570
    move-result-object v3

    .line 571
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 572
    .line 573
    .line 574
    const-string v3, ",currentTarget:"

    .line 575
    .line 576
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 577
    .line 578
    .line 579
    invoke-virtual {p2}, Lcom/alphainventor/filemanager/file/n;->E()Ljava/lang/String;

    .line 580
    .line 581
    .line 582
    move-result-object v3

    .line 583
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 584
    .line 585
    .line 586
    const-string v3, ",lastCreatedFolder:"

    .line 587
    .line 588
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 589
    .line 590
    .line 591
    iget-object v3, p0, Lax/Z2/e$j;->k:Lax/Z2/e;

    .line 592
    .line 593
    invoke-static {v3}, Lax/Z2/e;->G0(Lax/Z2/e;)Ljava/lang/String;

    .line 594
    .line 595
    .line 596
    move-result-object v3

    .line 597
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 598
    .line 599
    .line 600
    const-string v3, ",currentSource:"

    .line 601
    .line 602
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 603
    .line 604
    .line 605
    invoke-virtual {p1}, Lcom/alphainventor/filemanager/file/n;->E()Ljava/lang/String;

    .line 606
    .line 607
    .line 608
    move-result-object v3

    .line 609
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 610
    .line 611
    .line 612
    const-string v3, ",sourceParent:"

    .line 613
    .line 614
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 615
    .line 616
    .line 617
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 618
    .line 619
    .line 620
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 621
    .line 622
    .line 623
    move-result-object v0

    .line 624
    invoke-static {}, Lax/sb/c;->h()Lax/sb/b;

    .line 625
    .line 626
    .line 627
    move-result-object v1

    .line 628
    invoke-virtual {v1}, Lax/sb/b;->g()Lax/sb/b;

    .line 629
    .line 630
    .line 631
    move-result-object v1

    .line 632
    const-string v3, "PASTE FAILED NO PARENT"

    .line 633
    .line 634
    invoke-virtual {v1, v3}, Lax/sb/b;->d(Ljava/lang/String;)Lax/sb/b;

    .line 635
    .line 636
    .line 637
    move-result-object v1

    .line 638
    invoke-virtual {v1, v0}, Lax/sb/b;->h(Ljava/lang/Object;)Lax/sb/b;

    .line 639
    .line 640
    .line 641
    move-result-object v0

    .line 642
    invoke-virtual {v0}, Lax/sb/b;->i()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 643
    .line 644
    .line 645
    goto/16 :goto_a

    .line 646
    .line 647
    :catch_2
    nop

    .line 648
    goto/16 :goto_a

    .line 649
    .line 650
    :cond_16
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 651
    .line 652
    .line 653
    move-result-object v1

    .line 654
    const-string v3, "EIO"

    .line 655
    .line 656
    if-eqz v1, :cond_17

    .line 657
    .line 658
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 659
    .line 660
    .line 661
    move-result-object v1

    .line 662
    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 663
    .line 664
    .line 665
    move-result v1

    .line 666
    if-nez v1, :cond_1c

    .line 667
    .line 668
    :cond_17
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 669
    .line 670
    .line 671
    move-result-object v1

    .line 672
    if-eqz v1, :cond_18

    .line 673
    .line 674
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 675
    .line 676
    .line 677
    move-result-object v1

    .line 678
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 679
    .line 680
    .line 681
    move-result-object v1

    .line 682
    if-eqz v1, :cond_18

    .line 683
    .line 684
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 685
    .line 686
    .line 687
    move-result-object v1

    .line 688
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 689
    .line 690
    .line 691
    move-result-object v1

    .line 692
    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 693
    .line 694
    .line 695
    move-result v1

    .line 696
    if-eqz v1, :cond_18

    .line 697
    .line 698
    goto/16 :goto_a

    .line 699
    .line 700
    :cond_18
    if-eqz p1, :cond_19

    .line 701
    .line 702
    invoke-virtual {p1}, Lcom/alphainventor/filemanager/file/n;->Q()Lax/U2/f;

    .line 703
    .line 704
    .line 705
    move-result-object v1

    .line 706
    invoke-static {v1}, Lax/U2/f;->l0(Lax/U2/f;)Z

    .line 707
    .line 708
    .line 709
    move-result v1

    .line 710
    if-eqz v1, :cond_19

    .line 711
    .line 712
    invoke-static {}, Lax/sb/c;->h()Lax/sb/b;

    .line 713
    .line 714
    .line 715
    move-result-object v1

    .line 716
    invoke-virtual {v1}, Lax/sb/b;->g()Lax/sb/b;

    .line 717
    .line 718
    .line 719
    move-result-object v1

    .line 720
    const-string v3, "PASTE FAILED : SOURCE NETWORK"

    .line 721
    .line 722
    invoke-virtual {v1, v3}, Lax/sb/b;->d(Ljava/lang/String;)Lax/sb/b;

    .line 723
    .line 724
    .line 725
    move-result-object v1

    .line 726
    invoke-virtual {v1, v0}, Lax/sb/b;->m(Ljava/lang/Throwable;)Lax/sb/b;

    .line 727
    .line 728
    .line 729
    move-result-object v0

    .line 730
    invoke-virtual {v0, v6}, Lax/sb/b;->h(Ljava/lang/Object;)Lax/sb/b;

    .line 731
    .line 732
    .line 733
    move-result-object v0

    .line 734
    invoke-virtual {v0}, Lax/sb/b;->i()V

    .line 735
    .line 736
    .line 737
    goto :goto_a

    .line 738
    :cond_19
    if-eqz p2, :cond_1a

    .line 739
    .line 740
    invoke-virtual {p2}, Lcom/alphainventor/filemanager/file/n;->Q()Lax/U2/f;

    .line 741
    .line 742
    .line 743
    move-result-object v1

    .line 744
    invoke-static {v1}, Lax/U2/f;->l0(Lax/U2/f;)Z

    .line 745
    .line 746
    .line 747
    move-result v1

    .line 748
    if-eqz v1, :cond_1a

    .line 749
    .line 750
    invoke-static {}, Lax/sb/c;->h()Lax/sb/b;

    .line 751
    .line 752
    .line 753
    move-result-object v1

    .line 754
    invoke-virtual {v1}, Lax/sb/b;->g()Lax/sb/b;

    .line 755
    .line 756
    .line 757
    move-result-object v1

    .line 758
    const-string v3, "PASTE FAILED : TARGET NETWORK"

    .line 759
    .line 760
    invoke-virtual {v1, v3}, Lax/sb/b;->d(Ljava/lang/String;)Lax/sb/b;

    .line 761
    .line 762
    .line 763
    move-result-object v1

    .line 764
    invoke-virtual {v1, v0}, Lax/sb/b;->m(Ljava/lang/Throwable;)Lax/sb/b;

    .line 765
    .line 766
    .line 767
    move-result-object v0

    .line 768
    invoke-virtual {v0, v6}, Lax/sb/b;->h(Ljava/lang/Object;)Lax/sb/b;

    .line 769
    .line 770
    .line 771
    move-result-object v0

    .line 772
    invoke-virtual {v0}, Lax/sb/b;->i()V

    .line 773
    .line 774
    .line 775
    goto :goto_a

    .line 776
    :cond_1a
    invoke-static {}, Lax/sb/c;->h()Lax/sb/b;

    .line 777
    .line 778
    .line 779
    move-result-object v1

    .line 780
    invoke-virtual {v1}, Lax/sb/b;->g()Lax/sb/b;

    .line 781
    .line 782
    .line 783
    move-result-object v1

    .line 784
    const-string v3, "PASTE FAILED"

    .line 785
    .line 786
    invoke-virtual {v1, v3}, Lax/sb/b;->d(Ljava/lang/String;)Lax/sb/b;

    .line 787
    .line 788
    .line 789
    move-result-object v1

    .line 790
    invoke-virtual {v1, v0}, Lax/sb/b;->m(Ljava/lang/Throwable;)Lax/sb/b;

    .line 791
    .line 792
    .line 793
    move-result-object v0

    .line 794
    invoke-virtual {v0, v6}, Lax/sb/b;->h(Ljava/lang/Object;)Lax/sb/b;

    .line 795
    .line 796
    .line 797
    move-result-object v0

    .line 798
    invoke-virtual {v0}, Lax/sb/b;->i()V

    .line 799
    .line 800
    .line 801
    goto :goto_a

    .line 802
    :cond_1b
    :goto_9
    invoke-static {}, Lax/sb/c;->h()Lax/sb/b;

    .line 803
    .line 804
    .line 805
    move-result-object v0

    .line 806
    invoke-virtual {v0}, Lax/sb/b;->g()Lax/sb/b;

    .line 807
    .line 808
    .line 809
    move-result-object v0

    .line 810
    const-string v3, "PASTE FAILED HAS KNOWN REASON"

    .line 811
    .line 812
    invoke-virtual {v0, v3}, Lax/sb/b;->d(Ljava/lang/String;)Lax/sb/b;

    .line 813
    .line 814
    .line 815
    move-result-object v0

    .line 816
    new-instance v3, Ljava/lang/StringBuilder;

    .line 817
    .line 818
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 819
    .line 820
    .line 821
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 822
    .line 823
    .line 824
    const-string v6, ","

    .line 825
    .line 826
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 827
    .line 828
    .line 829
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 830
    .line 831
    .line 832
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 833
    .line 834
    .line 835
    move-result-object v1

    .line 836
    invoke-virtual {v0, v1}, Lax/sb/b;->h(Ljava/lang/Object;)Lax/sb/b;

    .line 837
    .line 838
    .line 839
    move-result-object v0

    .line 840
    invoke-virtual {v0}, Lax/sb/b;->i()V

    .line 841
    .line 842
    .line 843
    :cond_1c
    :goto_a
    move-object v0, v5

    .line 844
    :goto_b
    sget-object v1, Lax/Z2/e$h;->q:Lax/Z2/e$h;

    .line 845
    .line 846
    if-ne v0, v1, :cond_1d

    .line 847
    .line 848
    iget-object v1, p0, Lax/Z2/e$j;->k:Lax/Z2/e;

    .line 849
    .line 850
    invoke-virtual {v1}, Lax/Z2/j;->w()Lax/Z2/v;

    .line 851
    .line 852
    .line 853
    move-result-object v1

    .line 854
    sget-object v2, Lax/Z2/v$b;->q:Lax/Z2/v$b;

    .line 855
    .line 856
    invoke-virtual {v1, v2, v10}, Lax/Z2/v;->c(Lax/Z2/v$b;I)V

    .line 857
    .line 858
    .line 859
    iget-object v1, p0, Lax/Z2/e$j;->k:Lax/Z2/e;

    .line 860
    .line 861
    invoke-virtual {v1}, Lax/Z2/j;->w()Lax/Z2/v;

    .line 862
    .line 863
    .line 864
    move-result-object v1

    .line 865
    invoke-virtual {v1, v10}, Lax/Z2/v;->a(I)V

    .line 866
    .line 867
    .line 868
    goto :goto_c

    .line 869
    :cond_1d
    sget-object v1, Lax/Z2/e$h;->Z:Lax/Z2/e$h;

    .line 870
    .line 871
    if-eq v0, v1, :cond_1e

    .line 872
    .line 873
    iget-object v1, p0, Lax/Z2/e$j;->k:Lax/Z2/e;

    .line 874
    .line 875
    invoke-virtual {p2}, Lcom/alphainventor/filemanager/file/n;->B()Ljava/lang/String;

    .line 876
    .line 877
    .line 878
    move-result-object v3

    .line 879
    invoke-static {v1, p1, v3, v10}, Lax/Z2/e;->w0(Lax/Z2/e;Lcom/alphainventor/filemanager/file/n;Ljava/lang/String;I)V

    .line 880
    .line 881
    .line 882
    :cond_1e
    :goto_c
    return-object v0
    .line 883
    .line 884
    .line 885
    .line 886
    .line 887
    .line 888
    .line 889
    .line 890
    .line 891
    .line 892
    .line 893
    .line 894
    .line 895
    .line 896
    .line 897
    .line 898
    .line 899
    .line 900
    .line 901
    .line 902
    .line 903
    .line 904
    .line 905
    .line 906
    .line 907
    .line 908
    .line 909
    .line 910
    .line 911
    .line 912
    .line 913
    .line 914
    .line 915
    .line 916
    .line 917
    .line 918
    .line 919
    .line 920
    .line 921
    .line 922
    .line 923
    .line 924
    .line 925
    .line 926
    .line 927
    .line 928
    .line 929
    .line 930
    .line 931
    .line 932
    .line 933
    .line 934
    .line 935
    .line 936
    .line 937
    .line 938
    .line 939
    .line 940
    .line 941
    .line 942
    .line 943
    .line 944
    .line 945
    .line 946
    .line 947
    .line 948
    .line 949
    .line 950
    .line 951
    .line 952
    .line 953
    .line 954
    .line 955
    .line 956
    .line 957
    .line 958
    .line 959
    .line 960
    .line 961
    .line 962
    .line 963
    .line 964
    .line 965
    .line 966
    .line 967
    .line 968
    .line 969
    .line 970
    .line 971
    .line 972
    .line 973
    .line 974
    .line 975
    .line 976
    .line 977
    .line 978
    .line 979
    .line 980
    .line 981
    .line 982
    .line 983
    .line 984
    .line 985
    .line 986
    .line 987
    .line 988
    .line 989
    .line 990
    .line 991
    .line 992
    .line 993
    .line 994
    .line 995
    .line 996
    .line 997
    .line 998
    .line 999
    .line 1000
    .line 1001
    .line 1002
    .line 1003
    .line 1004
    .line 1005
    .line 1006
    .line 1007
    .line 1008
    .line 1009
    .line 1010
    .line 1011
    .line 1012
    .line 1013
    .line 1014
    .line 1015
    .line 1016
    .line 1017
    .line 1018
    .line 1019
    .line 1020
    .line 1021
    .line 1022
    .line 1023
    .line 1024
    .line 1025
    .line 1026
    .line 1027
    .line 1028
    .line 1029
    .line 1030
    .line 1031
    .line 1032
    .line 1033
    .line 1034
    .line 1035
    .line 1036
    .line 1037
    .line 1038
    .line 1039
    .line 1040
    .line 1041
    .line 1042
    .line 1043
    .line 1044
    .line 1045
    .line 1046
    .line 1047
    .line 1048
    .line 1049
    .line 1050
    .line 1051
    .line 1052
    .line 1053
    .line 1054
    .line 1055
    .line 1056
    .line 1057
    .line 1058
    .line 1059
    .line 1060
    .line 1061
    .line 1062
    .line 1063
    .line 1064
    .line 1065
    .line 1066
    .line 1067
    .line 1068
    .line 1069
    .line 1070
    .line 1071
    .line 1072
    .line 1073
    .line 1074
    .line 1075
    .line 1076
    .line 1077
    .line 1078
    .line 1079
    .line 1080
    .line 1081
    .line 1082
    .line 1083
    .line 1084
    .line 1085
    .line 1086
    .line 1087
    .line 1088
    .line 1089
    .line 1090
    .line 1091
    .line 1092
    .line 1093
    .line 1094
    .line 1095
    .line 1096
    .line 1097
    .line 1098
    .line 1099
    .line 1100
    .line 1101
    .line 1102
    .line 1103
    .line 1104
    .line 1105
    .line 1106
    .line 1107
    .line 1108
    .line 1109
    .line 1110
    .line 1111
    .line 1112
    .line 1113
    .line 1114
    .line 1115
    .line 1116
    .line 1117
    .line 1118
    .line 1119
    .line 1120
    .line 1121
    .line 1122
    .line 1123
    .line 1124
    .line 1125
    .line 1126
    .line 1127
    .line 1128
    .line 1129
    .line 1130
    .line 1131
    .line 1132
    .line 1133
    .line 1134
    .line 1135
    .line 1136
    .line 1137
    .line 1138
    .line 1139
    .line 1140
    .line 1141
    .line 1142
    .line 1143
    .line 1144
    .line 1145
    .line 1146
    .line 1147
    .line 1148
    .line 1149
    .line 1150
    .line 1151
    .line 1152
    .line 1153
    .line 1154
    .line 1155
    .line 1156
    .line 1157
    .line 1158
    .line 1159
    .line 1160
    .line 1161
    .line 1162
    .line 1163
    .line 1164
    .line 1165
    .line 1166
    .line 1167
    .line 1168
    .line 1169
    .line 1170
    .line 1171
    .line 1172
    .line 1173
    .line 1174
    .line 1175
    .line 1176
    .line 1177
    .line 1178
    .line 1179
    .line 1180
    .line 1181
    .line 1182
    .line 1183
    .line 1184
    .line 1185
    .line 1186
    .line 1187
    .line 1188
    .line 1189
    .line 1190
    .line 1191
    .line 1192
    .line 1193
    .line 1194
    .line 1195
    .line 1196
    .line 1197
    .line 1198
    .line 1199
    .line 1200
    .line 1201
    .line 1202
    .line 1203
    .line 1204
    .line 1205
    .line 1206
    .line 1207
    .line 1208
    .line 1209
    .line 1210
    .line 1211
    .line 1212
    .line 1213
    .line 1214
    .line 1215
    .line 1216
    .line 1217
    .line 1218
    .line 1219
    .line 1220
    .line 1221
    .line 1222
    .line 1223
    .line 1224
    .line 1225
    .line 1226
    .line 1227
    .line 1228
    .line 1229
    .line 1230
    .line 1231
    .line 1232
    .line 1233
    .line 1234
    .line 1235
    .line 1236
    .line 1237
    .line 1238
    .line 1239
    .line 1240
    .line 1241
    .line 1242
    .line 1243
    .line 1244
    .line 1245
    .line 1246
    .line 1247
    .line 1248
    .line 1249
    .line 1250
    .line 1251
    .line 1252
    .line 1253
    .line 1254
    .line 1255
    .line 1256
    .line 1257
    .line 1258
    .line 1259
    .line 1260
    .line 1261
    .line 1262
    .line 1263
    .line 1264
    .line 1265
    .line 1266
    .line 1267
    .line 1268
    .line 1269
    .line 1270
    .line 1271
    .line 1272
    .line 1273
    .line 1274
    .line 1275
    .line 1276
    .line 1277
    .line 1278
    .line 1279
    .line 1280
    .line 1281
    .line 1282
    .line 1283
    .line 1284
    .line 1285
    .line 1286
    .line 1287
    .line 1288
    .line 1289
    .line 1290
    .line 1291
    .line 1292
    .line 1293
    .line 1294
    .line 1295
    .line 1296
    .line 1297
    .line 1298
    .line 1299
    .line 1300
    .line 1301
    .line 1302
    .line 1303
    .line 1304
    .line 1305
    .line 1306
    .line 1307
    .line 1308
    .line 1309
    .line 1310
    .line 1311
    .line 1312
    .line 1313
    .line 1314
    .line 1315
    .line 1316
    .line 1317
    .line 1318
    .line 1319
    .line 1320
    .line 1321
    .line 1322
    .line 1323
    .line 1324
    .line 1325
    .line 1326
    .line 1327
    .line 1328
    .line 1329
    .line 1330
    .line 1331
    .line 1332
    .line 1333
    .line 1334
    .line 1335
    .line 1336
    .line 1337
    .line 1338
    .line 1339
    .line 1340
    .line 1341
    .line 1342
    .line 1343
    .line 1344
    .line 1345
    .line 1346
    .line 1347
    .line 1348
    .line 1349
    .line 1350
    .line 1351
    .line 1352
    .line 1353
    .line 1354
    .line 1355
    .line 1356
    .line 1357
    .line 1358
    .line 1359
    .line 1360
    .line 1361
    .line 1362
    .line 1363
    .line 1364
    .line 1365
    .line 1366
    .line 1367
    .line 1368
    .line 1369
    .line 1370
    .line 1371
    .line 1372
    .line 1373
    .line 1374
    .line 1375
    .line 1376
    .line 1377
    .line 1378
    .line 1379
    .line 1380
    .line 1381
    .line 1382
    .line 1383
    .line 1384
    .line 1385
    .line 1386
    .line 1387
    .line 1388
    .line 1389
    .line 1390
    .line 1391
    .line 1392
    .line 1393
    .line 1394
    .line 1395
    .line 1396
    .line 1397
    .line 1398
    .line 1399
    .line 1400
    .line 1401
    .line 1402
    .line 1403
    .line 1404
    .line 1405
    .line 1406
    .line 1407
    .line 1408
    .line 1409
    .line 1410
    .line 1411
    .line 1412
    .line 1413
    .line 1414
    .line 1415
    .line 1416
    .line 1417
    .line 1418
    .line 1419
    .line 1420
.end method

.method private Q(Lcom/alphainventor/filemanager/file/n;Lcom/alphainventor/filemanager/file/n;Lax/Z2/j$f;)V
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lax/Z2/e$l;
        }
    .end annotation

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    move-object/from16 v3, p2

    .line 6
    .line 7
    iget-object v0, v1, Lax/Z2/e$j;->k:Lax/Z2/e;

    .line 8
    .line 9
    invoke-virtual {v0}, Lax/Z2/j;->w()Lax/Z2/v;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Lax/Z2/v;->z()J

    .line 14
    .line 15
    .line 16
    move-result-wide v4

    .line 17
    iget-object v0, v1, Lax/Z2/e$j;->k:Lax/Z2/e;

    .line 18
    .line 19
    invoke-virtual {v0}, Lax/Z2/j;->w()Lax/Z2/v;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {v0}, Lax/Z2/v;->n()I

    .line 24
    .line 25
    .line 26
    move-result v6

    .line 27
    iget-object v0, v1, Lax/Z2/e$j;->k:Lax/Z2/e;

    .line 28
    .line 29
    invoke-static {v0}, Lax/Z2/e;->r1(Lax/Z2/e;)Lcom/alphainventor/filemanager/file/n;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    const/4 v7, 0x0

    .line 34
    const/4 v8, 0x1

    .line 35
    if-ne v3, v0, :cond_0

    .line 36
    .line 37
    const/4 v9, 0x1

    .line 38
    goto :goto_0

    .line 39
    :cond_0
    const/4 v9, 0x0

    .line 40
    :goto_0
    sget-object v0, Lax/Z2/e$d;->b:[I

    .line 41
    .line 42
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Enum;->ordinal()I

    .line 43
    .line 44
    .line 45
    move-result v10

    .line 46
    aget v0, v0, v10

    .line 47
    .line 48
    const-wide/16 v10, 0x0

    .line 49
    .line 50
    const/4 v12, 0x0

    .line 51
    packed-switch v0, :pswitch_data_0

    .line 52
    .line 53
    .line 54
    const-string v0, "invalid overwrite type"

    .line 55
    .line 56
    invoke-static {v0}, Lax/z3/b;->g(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    sget-object v0, Lax/Z2/e$h;->X:Lax/Z2/e$h;

    .line 60
    .line 61
    goto/16 :goto_7

    .line 62
    .line 63
    :pswitch_0
    iget-object v0, v1, Lax/Z2/e$j;->k:Lax/Z2/e;

    .line 64
    .line 65
    invoke-virtual {v0}, Lax/Z2/j;->i()V

    .line 66
    .line 67
    .line 68
    sget-object v0, Lax/Z2/e$h;->Y:Lax/Z2/e$h;

    .line 69
    .line 70
    goto/16 :goto_7

    .line 71
    .line 72
    :pswitch_1
    invoke-interface {v2}, Lax/f3/b;->isDirectory()Z

    .line 73
    .line 74
    .line 75
    move-result v0

    .line 76
    if-eqz v0, :cond_1

    .line 77
    .line 78
    iget-object v0, v1, Lax/Z2/e$j;->k:Lax/Z2/e;

    .line 79
    .line 80
    invoke-virtual {v2}, Lcom/alphainventor/filemanager/file/n;->R()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v3

    .line 84
    invoke-static {v0, v3, v12}, Lax/Z2/e;->t1(Lax/Z2/e;Ljava/lang/String;Lax/Z2/e$f;)Lax/Z2/e$f;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    iget v3, v0, Lax/Z2/e$f;->a:I

    .line 89
    .line 90
    iget-wide v13, v0, Lax/Z2/e$f;->b:J

    .line 91
    .line 92
    goto :goto_1

    .line 93
    :cond_1
    invoke-interface {v2}, Lax/f3/b;->p()J

    .line 94
    .line 95
    .line 96
    move-result-wide v13

    .line 97
    const/4 v3, 0x1

    .line 98
    :goto_1
    iget-object v0, v1, Lax/Z2/e$j;->k:Lax/Z2/e;

    .line 99
    .line 100
    invoke-virtual {v0}, Lax/Z2/j;->w()Lax/Z2/v;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    sget-object v15, Lax/Z2/v$b;->Y:Lax/Z2/v$b;

    .line 105
    .line 106
    invoke-virtual {v0, v15, v3}, Lax/Z2/v;->c(Lax/Z2/v$b;I)V

    .line 107
    .line 108
    .line 109
    iget-object v0, v1, Lax/Z2/e$j;->k:Lax/Z2/e;

    .line 110
    .line 111
    invoke-virtual {v0}, Lax/Z2/j;->w()Lax/Z2/v;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    invoke-virtual {v0, v3}, Lax/Z2/v;->a(I)V

    .line 116
    .line 117
    .line 118
    cmp-long v0, v13, v10

    .line 119
    .line 120
    if-lez v0, :cond_2

    .line 121
    .line 122
    iget-object v0, v1, Lax/Z2/e$j;->k:Lax/Z2/e;

    .line 123
    .line 124
    invoke-virtual {v0}, Lax/Z2/j;->w()Lax/Z2/v;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    invoke-virtual {v0, v13, v14}, Lax/Z2/v;->e(J)V

    .line 129
    .line 130
    .line 131
    :cond_2
    sget-object v0, Lax/Z2/e$h;->q:Lax/Z2/e$h;

    .line 132
    .line 133
    goto/16 :goto_7

    .line 134
    .line 135
    :pswitch_2
    :try_start_0
    invoke-virtual {v2}, Lcom/alphainventor/filemanager/file/n;->E()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v0

    .line 139
    invoke-virtual {v3}, Lcom/alphainventor/filemanager/file/n;->E()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v10

    .line 143
    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 144
    .line 145
    .line 146
    move-result v0

    .line 147
    iget-object v10, v1, Lax/Z2/e$j;->k:Lax/Z2/e;

    .line 148
    .line 149
    invoke-static {v10}, Lax/Z2/e;->D0(Lax/Z2/e;)Lcom/alphainventor/filemanager/file/o;

    .line 150
    .line 151
    .line 152
    move-result-object v10

    .line 153
    invoke-virtual {v10, v3, v0}, Lcom/alphainventor/filemanager/file/o;->F(Lcom/alphainventor/filemanager/file/n;Z)Lcom/alphainventor/filemanager/file/n;

    .line 154
    .line 155
    .line 156
    move-result-object v0

    .line 157
    iget-object v10, v1, Lax/Z2/e$j;->k:Lax/Z2/e;

    .line 158
    .line 159
    invoke-static {v10, v0}, Lax/Z2/e;->s1(Lax/Z2/e;Lcom/alphainventor/filemanager/file/n;)V

    .line 160
    .line 161
    .line 162
    invoke-interface {v2}, Lax/f3/b;->isDirectory()Z

    .line 163
    .line 164
    .line 165
    move-result v10

    .line 166
    if-eqz v10, :cond_3

    .line 167
    .line 168
    iget-object v10, v1, Lax/Z2/e$j;->k:Lax/Z2/e;

    .line 169
    .line 170
    invoke-virtual {v2}, Lcom/alphainventor/filemanager/file/n;->E()Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object v11

    .line 174
    invoke-virtual {v0}, Lcom/alphainventor/filemanager/file/n;->E()Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object v13

    .line 178
    invoke-static {v10, v11, v13}, Lax/Z2/e;->F0(Lax/Z2/e;Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    .line 180
    .line 181
    goto :goto_2

    .line 182
    :catch_0
    move-exception v0

    .line 183
    goto :goto_3

    .line 184
    :cond_3
    :goto_2
    invoke-virtual {v1, v2, v0}, Lax/Z2/e$j;->P(Lcom/alphainventor/filemanager/file/n;Lcom/alphainventor/filemanager/file/n;)Lax/Z2/e$h;

    .line 185
    .line 186
    .line 187
    move-result-object v0
    :try_end_0
    .catch Lax/e3/j; {:try_start_0 .. :try_end_0} :catch_0

    .line 188
    goto/16 :goto_7

    .line 189
    .line 190
    :goto_3
    invoke-interface {v2}, Lax/f3/b;->isDirectory()Z

    .line 191
    .line 192
    .line 193
    move-result v10

    .line 194
    if-eqz v10, :cond_4

    .line 195
    .line 196
    iget-object v10, v1, Lax/Z2/e$j;->k:Lax/Z2/e;

    .line 197
    .line 198
    invoke-virtual {v2}, Lcom/alphainventor/filemanager/file/n;->R()Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object v11

    .line 202
    invoke-static {v10, v11}, Lax/Z2/e;->V0(Lax/Z2/e;Ljava/lang/String;)I

    .line 203
    .line 204
    .line 205
    move-result v10

    .line 206
    goto :goto_4

    .line 207
    :cond_4
    const/4 v10, 0x1

    .line 208
    :goto_4
    if-nez v10, :cond_5

    .line 209
    .line 210
    iget-object v11, v1, Lax/Z2/e$j;->k:Lax/Z2/e;

    .line 211
    .line 212
    invoke-static {v11, v8}, Lax/Z2/e;->W0(Lax/Z2/e;Z)Z

    .line 213
    .line 214
    .line 215
    :cond_5
    iget-object v11, v1, Lax/Z2/e$j;->k:Lax/Z2/e;

    .line 216
    .line 217
    invoke-virtual {v3}, Lcom/alphainventor/filemanager/file/n;->B()Ljava/lang/String;

    .line 218
    .line 219
    .line 220
    move-result-object v3

    .line 221
    invoke-static {v11, v2, v3, v10}, Lax/Z2/e;->w0(Lax/Z2/e;Lcom/alphainventor/filemanager/file/n;Ljava/lang/String;I)V

    .line 222
    .line 223
    .line 224
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 225
    .line 226
    .line 227
    sget-object v0, Lax/Z2/e$h;->X:Lax/Z2/e$h;

    .line 228
    .line 229
    goto :goto_7

    .line 230
    :pswitch_3
    invoke-interface {v2}, Lax/f3/b;->q()J

    .line 231
    .line 232
    .line 233
    move-result-wide v13

    .line 234
    const-wide/16 v15, 0x3e8

    .line 235
    .line 236
    div-long/2addr v13, v15

    .line 237
    invoke-interface {v3}, Lax/f3/b;->q()J

    .line 238
    .line 239
    .line 240
    move-result-wide v17

    .line 241
    div-long v17, v17, v15

    .line 242
    .line 243
    cmp-long v0, v13, v17

    .line 244
    .line 245
    if-lez v0, :cond_6

    .line 246
    .line 247
    goto :goto_5

    .line 248
    :cond_6
    invoke-interface {v2}, Lax/f3/b;->p()J

    .line 249
    .line 250
    .line 251
    move-result-wide v13

    .line 252
    invoke-interface {v3}, Lax/f3/b;->p()J

    .line 253
    .line 254
    .line 255
    move-result-wide v15

    .line 256
    cmp-long v0, v13, v15

    .line 257
    .line 258
    if-nez v0, :cond_7

    .line 259
    .line 260
    goto :goto_6

    .line 261
    :cond_7
    invoke-interface {v2}, Lax/f3/b;->q()J

    .line 262
    .line 263
    .line 264
    move-result-wide v13

    .line 265
    invoke-interface {v3}, Lax/f3/b;->q()J

    .line 266
    .line 267
    .line 268
    move-result-wide v15

    .line 269
    cmp-long v0, v13, v15

    .line 270
    .line 271
    if-lez v0, :cond_8

    .line 272
    .line 273
    :goto_5
    invoke-virtual/range {p0 .. p2}, Lax/Z2/e$j;->P(Lcom/alphainventor/filemanager/file/n;Lcom/alphainventor/filemanager/file/n;)Lax/Z2/e$h;

    .line 274
    .line 275
    .line 276
    move-result-object v0

    .line 277
    goto :goto_7

    .line 278
    :cond_8
    :goto_6
    iget-object v0, v1, Lax/Z2/e$j;->k:Lax/Z2/e;

    .line 279
    .line 280
    invoke-virtual {v0}, Lax/Z2/j;->w()Lax/Z2/v;

    .line 281
    .line 282
    .line 283
    move-result-object v0

    .line 284
    sget-object v3, Lax/Z2/v$b;->Y:Lax/Z2/v$b;

    .line 285
    .line 286
    invoke-virtual {v0, v3, v8}, Lax/Z2/v;->c(Lax/Z2/v$b;I)V

    .line 287
    .line 288
    .line 289
    iget-object v0, v1, Lax/Z2/e$j;->k:Lax/Z2/e;

    .line 290
    .line 291
    invoke-virtual {v0}, Lax/Z2/j;->w()Lax/Z2/v;

    .line 292
    .line 293
    .line 294
    move-result-object v0

    .line 295
    invoke-virtual {v0, v8}, Lax/Z2/v;->a(I)V

    .line 296
    .line 297
    .line 298
    invoke-interface {v2}, Lax/f3/b;->p()J

    .line 299
    .line 300
    .line 301
    move-result-wide v13

    .line 302
    cmp-long v0, v13, v10

    .line 303
    .line 304
    if-lez v0, :cond_9

    .line 305
    .line 306
    iget-object v0, v1, Lax/Z2/e$j;->k:Lax/Z2/e;

    .line 307
    .line 308
    invoke-virtual {v0}, Lax/Z2/j;->w()Lax/Z2/v;

    .line 309
    .line 310
    .line 311
    move-result-object v0

    .line 312
    invoke-virtual {v0, v13, v14}, Lax/Z2/v;->e(J)V

    .line 313
    .line 314
    .line 315
    :cond_9
    sget-object v0, Lax/Z2/e$h;->q:Lax/Z2/e$h;

    .line 316
    .line 317
    goto :goto_7

    .line 318
    :pswitch_4
    invoke-virtual/range {p0 .. p2}, Lax/Z2/e$j;->P(Lcom/alphainventor/filemanager/file/n;Lcom/alphainventor/filemanager/file/n;)Lax/Z2/e$h;

    .line 319
    .line 320
    .line 321
    move-result-object v0

    .line 322
    :goto_7
    sget-object v3, Lax/Z2/e$h;->Z:Lax/Z2/e$h;

    .line 323
    .line 324
    if-eq v0, v3, :cond_11

    .line 325
    .line 326
    if-eqz v9, :cond_a

    .line 327
    .line 328
    iget-object v3, v1, Lax/Z2/e$j;->k:Lax/Z2/e;

    .line 329
    .line 330
    invoke-static {v3}, Lax/Z2/e;->w1(Lax/Z2/e;)Lcom/alphainventor/filemanager/file/n;

    .line 331
    .line 332
    .line 333
    move-result-object v3

    .line 334
    if-eqz v3, :cond_a

    .line 335
    .line 336
    iget-object v3, v1, Lax/Z2/e$j;->k:Lax/Z2/e;

    .line 337
    .line 338
    invoke-static {v3}, Lax/Z2/e;->x1(Lax/Z2/e;)Lax/B/b;

    .line 339
    .line 340
    .line 341
    move-result-object v3

    .line 342
    iget-object v4, v1, Lax/Z2/e$j;->k:Lax/Z2/e;

    .line 343
    .line 344
    invoke-static {v4}, Lax/Z2/e;->w1(Lax/Z2/e;)Lcom/alphainventor/filemanager/file/n;

    .line 345
    .line 346
    .line 347
    move-result-object v4

    .line 348
    invoke-virtual {v4}, Lcom/alphainventor/filemanager/file/n;->B()Ljava/lang/String;

    .line 349
    .line 350
    .line 351
    move-result-object v4

    .line 352
    invoke-virtual {v3, v4}, Lax/B/b;->add(Ljava/lang/Object;)Z

    .line 353
    .line 354
    .line 355
    :cond_a
    iget-object v3, v1, Lax/Z2/e$j;->k:Lax/Z2/e;

    .line 356
    .line 357
    invoke-static {v3}, Lax/Z2/e;->z0(Lax/Z2/e;)Ljava/util/LinkedList;

    .line 358
    .line 359
    .line 360
    move-result-object v3

    .line 361
    if-eqz v3, :cond_10

    .line 362
    .line 363
    iget-object v3, v1, Lax/Z2/e$j;->k:Lax/Z2/e;

    .line 364
    .line 365
    invoke-static {v3}, Lax/Z2/e;->z0(Lax/Z2/e;)Ljava/util/LinkedList;

    .line 366
    .line 367
    .line 368
    move-result-object v3

    .line 369
    invoke-virtual {v3}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 370
    .line 371
    .line 372
    move-result v3

    .line 373
    if-eqz v3, :cond_10

    .line 374
    .line 375
    invoke-virtual {v1}, Lax/z3/q;->isCancelled()Z

    .line 376
    .line 377
    .line 378
    move-result v3

    .line 379
    if-nez v3, :cond_10

    .line 380
    .line 381
    iget-object v3, v1, Lax/Z2/e$j;->k:Lax/Z2/e;

    .line 382
    .line 383
    invoke-static {v3}, Lax/Z2/e;->J0(Lax/Z2/e;)Z

    .line 384
    .line 385
    .line 386
    move-result v3

    .line 387
    if-eqz v3, :cond_f

    .line 388
    .line 389
    sget-object v3, Lax/Z2/e$h;->q:Lax/Z2/e$h;

    .line 390
    .line 391
    if-ne v0, v3, :cond_f

    .line 392
    .line 393
    iget-object v0, v1, Lax/Z2/e$j;->k:Lax/Z2/e;

    .line 394
    .line 395
    invoke-static {v0}, Lax/Z2/e;->y1(Lax/Z2/e;)I

    .line 396
    .line 397
    .line 398
    move-result v0

    .line 399
    iget-object v3, v1, Lax/Z2/e$j;->k:Lax/Z2/e;

    .line 400
    .line 401
    iget-object v3, v3, Lax/Z2/j;->a:Lax/Z2/v;

    .line 402
    .line 403
    invoke-virtual {v3}, Lax/Z2/v;->n()I

    .line 404
    .line 405
    .line 406
    move-result v3

    .line 407
    if-ne v0, v3, :cond_10

    .line 408
    .line 409
    iget-object v0, v1, Lax/Z2/e$j;->k:Lax/Z2/e;

    .line 410
    .line 411
    invoke-static {v0}, Lax/Z2/e;->d1(Lax/Z2/e;)I

    .line 412
    .line 413
    .line 414
    move-result v0

    .line 415
    if-nez v0, :cond_10

    .line 416
    .line 417
    iget-object v0, v1, Lax/Z2/e$j;->k:Lax/Z2/e;

    .line 418
    .line 419
    iget-object v0, v0, Lax/Z2/j;->a:Lax/Z2/v;

    .line 420
    .line 421
    invoke-virtual {v0}, Lax/Z2/v;->G()I

    .line 422
    .line 423
    .line 424
    move-result v0

    .line 425
    iget-object v3, v1, Lax/Z2/e$j;->k:Lax/Z2/e;

    .line 426
    .line 427
    invoke-static {v3}, Lax/Z2/e;->A1(Lax/Z2/e;)I

    .line 428
    .line 429
    .line 430
    move-result v3

    .line 431
    sub-int/2addr v0, v3

    .line 432
    iget-object v3, v1, Lax/Z2/e$j;->k:Lax/Z2/e;

    .line 433
    .line 434
    invoke-static {v3}, Lax/Z2/e;->X0(Lax/Z2/e;)I

    .line 435
    .line 436
    .line 437
    move-result v3

    .line 438
    if-ne v3, v0, :cond_b

    .line 439
    .line 440
    iget-object v3, v1, Lax/Z2/e$j;->k:Lax/Z2/e;

    .line 441
    .line 442
    invoke-static {v3}, Lax/Z2/e;->a1(Lax/Z2/e;)I

    .line 443
    .line 444
    .line 445
    move-result v3

    .line 446
    if-lez v3, :cond_b

    .line 447
    .line 448
    const/4 v7, 0x1

    .line 449
    :cond_b
    iget-object v3, v1, Lax/Z2/e$j;->k:Lax/Z2/e;

    .line 450
    .line 451
    invoke-static {v3}, Lax/Z2/e;->m1(Lax/Z2/e;)I

    .line 452
    .line 453
    .line 454
    move-result v3

    .line 455
    iget-object v4, v1, Lax/Z2/e$j;->k:Lax/Z2/e;

    .line 456
    .line 457
    invoke-static {v4}, Lax/Z2/e;->X0(Lax/Z2/e;)I

    .line 458
    .line 459
    .line 460
    move-result v4

    .line 461
    add-int/2addr v3, v4

    .line 462
    if-eq v3, v0, :cond_c

    .line 463
    .line 464
    new-instance v0, Ljava/lang/StringBuilder;

    .line 465
    .line 466
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 467
    .line 468
    .line 469
    const-string v3, "expected:"

    .line 470
    .line 471
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 472
    .line 473
    .line 474
    iget-object v3, v1, Lax/Z2/e$j;->k:Lax/Z2/e;

    .line 475
    .line 476
    invoke-static {v3}, Lax/Z2/e;->m1(Lax/Z2/e;)I

    .line 477
    .line 478
    .line 479
    move-result v3

    .line 480
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 481
    .line 482
    .line 483
    const-string v3, ","

    .line 484
    .line 485
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 486
    .line 487
    .line 488
    iget-object v4, v1, Lax/Z2/e$j;->k:Lax/Z2/e;

    .line 489
    .line 490
    invoke-static {v4}, Lax/Z2/e;->X0(Lax/Z2/e;)I

    .line 491
    .line 492
    .line 493
    move-result v4

    .line 494
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 495
    .line 496
    .line 497
    const-string v4, ",result:"

    .line 498
    .line 499
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 500
    .line 501
    .line 502
    iget-object v4, v1, Lax/Z2/e$j;->k:Lax/Z2/e;

    .line 503
    .line 504
    iget-object v4, v4, Lax/Z2/j;->a:Lax/Z2/v;

    .line 505
    .line 506
    invoke-virtual {v4}, Lax/Z2/v;->G()I

    .line 507
    .line 508
    .line 509
    move-result v4

    .line 510
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 511
    .line 512
    .line 513
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 514
    .line 515
    .line 516
    iget-object v4, v1, Lax/Z2/e$j;->k:Lax/Z2/e;

    .line 517
    .line 518
    invoke-static {v4}, Lax/Z2/e;->A1(Lax/Z2/e;)I

    .line 519
    .line 520
    .line 521
    move-result v4

    .line 522
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 523
    .line 524
    .line 525
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 526
    .line 527
    .line 528
    iget-object v4, v1, Lax/Z2/e$j;->k:Lax/Z2/e;

    .line 529
    .line 530
    iget-object v4, v4, Lax/Z2/j;->a:Lax/Z2/v;

    .line 531
    .line 532
    invoke-virtual {v4}, Lax/Z2/v;->C()I

    .line 533
    .line 534
    .line 535
    move-result v4

    .line 536
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 537
    .line 538
    .line 539
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 540
    .line 541
    .line 542
    iget-object v3, v1, Lax/Z2/e$j;->k:Lax/Z2/e;

    .line 543
    .line 544
    invoke-static {v3}, Lax/Z2/e;->C1(Lax/Z2/e;)I

    .line 545
    .line 546
    .line 547
    move-result v3

    .line 548
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 549
    .line 550
    .line 551
    const-string v3, ",dir:"

    .line 552
    .line 553
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 554
    .line 555
    .line 556
    iget-object v3, v1, Lax/Z2/e$j;->k:Lax/Z2/e;

    .line 557
    .line 558
    invoke-static {v3}, Lax/Z2/e;->R0(Lax/Z2/e;)I

    .line 559
    .line 560
    .line 561
    move-result v3

    .line 562
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 563
    .line 564
    .line 565
    const-string v3, ",type:"

    .line 566
    .line 567
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 568
    .line 569
    .line 570
    move-object/from16 v3, p3

    .line 571
    .line 572
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 573
    .line 574
    .line 575
    const-string v3, ",location:"

    .line 576
    .line 577
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 578
    .line 579
    .line 580
    invoke-virtual {v2}, Lcom/alphainventor/filemanager/file/n;->Q()Lax/U2/f;

    .line 581
    .line 582
    .line 583
    move-result-object v2

    .line 584
    invoke-virtual {v2}, Lax/U2/f;->H()Ljava/lang/String;

    .line 585
    .line 586
    .line 587
    move-result-object v2

    .line 588
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 589
    .line 590
    .line 591
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 592
    .line 593
    .line 594
    move-result-object v0

    .line 595
    invoke-static {}, Lax/sb/c;->h()Lax/sb/b;

    .line 596
    .line 597
    .line 598
    move-result-object v2

    .line 599
    invoke-virtual {v2}, Lax/sb/b;->g()Lax/sb/b;

    .line 600
    .line 601
    .line 602
    move-result-object v2

    .line 603
    const-string v3, "MOVE FILE COUNT NOT MATCH"

    .line 604
    .line 605
    invoke-virtual {v2, v3}, Lax/sb/b;->b(Ljava/lang/String;)Lax/sb/b;

    .line 606
    .line 607
    .line 608
    move-result-object v2

    .line 609
    invoke-virtual {v2, v0}, Lax/sb/b;->h(Ljava/lang/Object;)Lax/sb/b;

    .line 610
    .line 611
    .line 612
    move-result-object v0

    .line 613
    invoke-virtual {v0}, Lax/sb/b;->i()V

    .line 614
    .line 615
    .line 616
    :cond_c
    iget-object v0, v1, Lax/Z2/e$j;->k:Lax/Z2/e;

    .line 617
    .line 618
    invoke-static {v0}, Lax/Z2/e;->E1(Lax/Z2/e;)Lcom/alphainventor/filemanager/file/n;

    .line 619
    .line 620
    .line 621
    move-result-object v2

    .line 622
    invoke-static {v0, v2}, Lax/Z2/e;->F1(Lax/Z2/e;Lcom/alphainventor/filemanager/file/n;)V

    .line 623
    .line 624
    .line 625
    iget-object v0, v1, Lax/Z2/e$j;->k:Lax/Z2/e;

    .line 626
    .line 627
    invoke-static {v0}, Lax/Z2/e;->r1(Lax/Z2/e;)Lcom/alphainventor/filemanager/file/n;

    .line 628
    .line 629
    .line 630
    move-result-object v2

    .line 631
    invoke-static {v0, v2}, Lax/Z2/e;->s1(Lax/Z2/e;Lcom/alphainventor/filemanager/file/n;)V

    .line 632
    .line 633
    .line 634
    iget-object v0, v1, Lax/Z2/e$j;->k:Lax/Z2/e;

    .line 635
    .line 636
    invoke-virtual {v0, v8}, Lax/Z2/j;->j0(Z)V

    .line 637
    .line 638
    .line 639
    if-eqz v7, :cond_d

    .line 640
    .line 641
    iget-object v0, v1, Lax/Z2/e$j;->k:Lax/Z2/e;

    .line 642
    .line 643
    invoke-virtual {v0}, Lax/Z2/j;->w()Lax/Z2/v;

    .line 644
    .line 645
    .line 646
    move-result-object v0

    .line 647
    sget-object v2, Lax/Z2/v$b;->q:Lax/Z2/v$b;

    .line 648
    .line 649
    invoke-virtual {v0, v2, v8}, Lax/Z2/v;->c(Lax/Z2/v$b;I)V

    .line 650
    .line 651
    .line 652
    goto :goto_8

    .line 653
    :cond_d
    iget-object v0, v1, Lax/Z2/e$j;->k:Lax/Z2/e;

    .line 654
    .line 655
    invoke-static {v0}, Lax/Z2/e;->E1(Lax/Z2/e;)Lcom/alphainventor/filemanager/file/n;

    .line 656
    .line 657
    .line 658
    move-result-object v0

    .line 659
    invoke-virtual {v1, v0}, Lax/Z2/e$j;->G(Lcom/alphainventor/filemanager/file/n;)Z

    .line 660
    .line 661
    .line 662
    move-result v0

    .line 663
    if-eqz v0, :cond_e

    .line 664
    .line 665
    iget-object v0, v1, Lax/Z2/e$j;->k:Lax/Z2/e;

    .line 666
    .line 667
    invoke-virtual {v0}, Lax/Z2/j;->w()Lax/Z2/v;

    .line 668
    .line 669
    .line 670
    move-result-object v0

    .line 671
    sget-object v2, Lax/Z2/v$b;->q:Lax/Z2/v$b;

    .line 672
    .line 673
    invoke-virtual {v0, v2, v8}, Lax/Z2/v;->c(Lax/Z2/v$b;I)V

    .line 674
    .line 675
    .line 676
    goto :goto_8

    .line 677
    :cond_e
    iget-object v0, v1, Lax/Z2/e$j;->k:Lax/Z2/e;

    .line 678
    .line 679
    invoke-virtual {v0}, Lax/Z2/j;->w()Lax/Z2/v;

    .line 680
    .line 681
    .line 682
    move-result-object v0

    .line 683
    sget-object v2, Lax/Z2/v$b;->X:Lax/Z2/v$b;

    .line 684
    .line 685
    invoke-virtual {v0, v2, v8}, Lax/Z2/v;->c(Lax/Z2/v$b;I)V

    .line 686
    .line 687
    .line 688
    iget-object v0, v1, Lax/Z2/e$j;->k:Lax/Z2/e;

    .line 689
    .line 690
    invoke-virtual {v0}, Lax/Z2/j;->w()Lax/Z2/v;

    .line 691
    .line 692
    .line 693
    move-result-object v0

    .line 694
    iget-object v2, v1, Lax/Z2/e$j;->k:Lax/Z2/e;

    .line 695
    .line 696
    invoke-static {v2}, Lax/Z2/e;->E1(Lax/Z2/e;)Lcom/alphainventor/filemanager/file/n;

    .line 697
    .line 698
    .line 699
    move-result-object v2

    .line 700
    invoke-virtual {v2}, Lcom/alphainventor/filemanager/file/n;->B()Ljava/lang/String;

    .line 701
    .line 702
    .line 703
    move-result-object v2

    .line 704
    invoke-virtual {v0, v2}, Lax/Z2/v;->b(Ljava/lang/String;)V

    .line 705
    .line 706
    .line 707
    iget-object v0, v1, Lax/Z2/e$j;->k:Lax/Z2/e;

    .line 708
    .line 709
    const/16 v2, 0x82

    .line 710
    .line 711
    invoke-virtual {v0, v2}, Lax/Z2/j;->p0(I)V

    .line 712
    .line 713
    .line 714
    goto :goto_8

    .line 715
    :cond_f
    iget-object v0, v1, Lax/Z2/e$j;->k:Lax/Z2/e;

    .line 716
    .line 717
    invoke-static {v0}, Lax/Z2/e;->I0(Lax/Z2/e;)Z

    .line 718
    .line 719
    .line 720
    move-result v0

    .line 721
    if-eqz v0, :cond_10

    .line 722
    .line 723
    invoke-direct {v1}, Lax/Z2/e$j;->D()V

    .line 724
    .line 725
    .line 726
    :cond_10
    :goto_8
    return-void

    .line 727
    :cond_11
    iget-object v0, v1, Lax/Z2/e$j;->k:Lax/Z2/e;

    .line 728
    .line 729
    invoke-virtual {v0}, Lax/Z2/j;->w()Lax/Z2/v;

    .line 730
    .line 731
    .line 732
    move-result-object v0

    .line 733
    invoke-virtual {v0, v4, v5}, Lax/Z2/v;->a0(J)V

    .line 734
    .line 735
    .line 736
    iget-object v0, v1, Lax/Z2/e$j;->k:Lax/Z2/e;

    .line 737
    .line 738
    invoke-virtual {v0}, Lax/Z2/j;->w()Lax/Z2/v;

    .line 739
    .line 740
    .line 741
    move-result-object v0

    .line 742
    invoke-virtual {v0, v6}, Lax/Z2/v;->U(I)V

    .line 743
    .line 744
    .line 745
    new-instance v0, Lax/Z2/e$l;

    .line 746
    .line 747
    invoke-direct {v0, v12}, Lax/Z2/e$l;-><init>(Lax/Z2/e$a;)V

    .line 748
    .line 749
    .line 750
    throw v0

    .line 751
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
    .line 752
    .line 753
    .line 754
    .line 755
    .line 756
    .line 757
    .line 758
    .line 759
    .line 760
    .line 761
    .line 762
    .line 763
    .line 764
    .line 765
    .line 766
    .line 767
    .line 768
    .line 769
    .line 770
    .line 771
    .line 772
    .line 773
    .line 774
    .line 775
    .line 776
    .line 777
    .line 778
    .line 779
    .line 780
    .line 781
    .line 782
    .line 783
    .line 784
    .line 785
    .line 786
    .line 787
    .line 788
    .line 789
    .line 790
    .line 791
    .line 792
    .line 793
    .line 794
    .line 795
    .line 796
    .line 797
    .line 798
    .line 799
    .line 800
    .line 801
    .line 802
    .line 803
    .line 804
    .line 805
    .line 806
    .line 807
    .line 808
    .line 809
    .line 810
    .line 811
    .line 812
    .line 813
    .line 814
    .line 815
    .line 816
    .line 817
    .line 818
    .line 819
    .line 820
    .line 821
    .line 822
    .line 823
    .line 824
    .line 825
    .line 826
    .line 827
    .line 828
    .line 829
    .line 830
    .line 831
    .line 832
    .line 833
    .line 834
    .line 835
    .line 836
    .line 837
    .line 838
    .line 839
    .line 840
    .line 841
    .line 842
    .line 843
    .line 844
    .line 845
    .line 846
    .line 847
    .line 848
    .line 849
    .line 850
    .line 851
    .line 852
    .line 853
    .line 854
    .line 855
    .line 856
    .line 857
    .line 858
    .line 859
    .line 860
    .line 861
    .line 862
    .line 863
    .line 864
    .line 865
    .line 866
    .line 867
    .line 868
    .line 869
    .line 870
    .line 871
    .line 872
    .line 873
    .line 874
    .line 875
    .line 876
    .line 877
    .line 878
    .line 879
    .line 880
    .line 881
    .line 882
    .line 883
    .line 884
    .line 885
    .line 886
    .line 887
    .line 888
    .line 889
    .line 890
    .line 891
    .line 892
    .line 893
    .line 894
    .line 895
    .line 896
    .line 897
    .line 898
    .line 899
    .line 900
    .line 901
    .line 902
    .line 903
    .line 904
    .line 905
    .line 906
    .line 907
    .line 908
    .line 909
    .line 910
    .line 911
    .line 912
    .line 913
    .line 914
    .line 915
    .line 916
    .line 917
    .line 918
    .line 919
    .line 920
    .line 921
    .line 922
    .line 923
    .line 924
    .line 925
    .line 926
    .line 927
    .line 928
    .line 929
    .line 930
    .line 931
    .line 932
    .line 933
    .line 934
    .line 935
    .line 936
    .line 937
    .line 938
    .line 939
    .line 940
    .line 941
    .line 942
    .line 943
    .line 944
    .line 945
    .line 946
    .line 947
    .line 948
    .line 949
    .line 950
    .line 951
    .line 952
    .line 953
    .line 954
    .line 955
    .line 956
    .line 957
    .line 958
    .line 959
    .line 960
    .line 961
    .line 962
    .line 963
    .line 964
    .line 965
    .line 966
    .line 967
    .line 968
    .line 969
    .line 970
    .line 971
    .line 972
    .line 973
    .line 974
    .line 975
    .line 976
    .line 977
    .line 978
    .line 979
    .line 980
    .line 981
    .line 982
    .line 983
    .line 984
    .line 985
    .line 986
    .line 987
    .line 988
    .line 989
    .line 990
    .line 991
    .line 992
    .line 993
    .line 994
    .line 995
    .line 996
    .line 997
    .line 998
    .line 999
    .line 1000
    .line 1001
    .line 1002
    .line 1003
    .line 1004
    .line 1005
    .line 1006
    .line 1007
    .line 1008
    .line 1009
    .line 1010
    .line 1011
    .line 1012
    .line 1013
    .line 1014
    .line 1015
    .line 1016
    .line 1017
    .line 1018
    .line 1019
    .line 1020
    .line 1021
    .line 1022
    .line 1023
    .line 1024
    .line 1025
    .line 1026
    .line 1027
    .line 1028
    .line 1029
    .line 1030
    .line 1031
    .line 1032
    .line 1033
    .line 1034
    .line 1035
    .line 1036
    .line 1037
    .line 1038
    .line 1039
    .line 1040
    .line 1041
    .line 1042
    .line 1043
    .line 1044
    .line 1045
    .line 1046
    .line 1047
    .line 1048
    .line 1049
    .line 1050
    .line 1051
    .line 1052
    .line 1053
    .line 1054
    .line 1055
    .line 1056
    .line 1057
    .line 1058
    .line 1059
    .line 1060
    .line 1061
    .line 1062
    .line 1063
    .line 1064
    .line 1065
    .line 1066
    .line 1067
    .line 1068
    .line 1069
    .line 1070
    .line 1071
    .line 1072
    .line 1073
    .line 1074
    .line 1075
    .line 1076
    .line 1077
    .line 1078
    .line 1079
    .line 1080
    .line 1081
    .line 1082
    .line 1083
    .line 1084
    .line 1085
    .line 1086
    .line 1087
    .line 1088
    .line 1089
    .line 1090
    .line 1091
    .line 1092
    .line 1093
    .line 1094
    .line 1095
    .line 1096
    .line 1097
    .line 1098
    .line 1099
    .line 1100
    .line 1101
    .line 1102
    .line 1103
    .line 1104
    .line 1105
    .line 1106
    .line 1107
    .line 1108
    .line 1109
    .line 1110
    .line 1111
    .line 1112
    .line 1113
    .line 1114
    .line 1115
    .line 1116
    .line 1117
    .line 1118
    .line 1119
    .line 1120
    .line 1121
    .line 1122
    .line 1123
    .line 1124
    .line 1125
    .line 1126
    .line 1127
    .line 1128
    .line 1129
    .line 1130
    .line 1131
    .line 1132
    .line 1133
    .line 1134
    .line 1135
    .line 1136
    .line 1137
    .line 1138
    .line 1139
    .line 1140
    .line 1141
    .line 1142
    .line 1143
    .line 1144
    .line 1145
    .line 1146
    .line 1147
    .line 1148
    .line 1149
    .line 1150
    .line 1151
    .line 1152
    .line 1153
    .line 1154
    .line 1155
    .line 1156
    .line 1157
    .line 1158
    .line 1159
    .line 1160
    .line 1161
    .line 1162
    .line 1163
    .line 1164
    .line 1165
    .line 1166
    .line 1167
    .line 1168
    .line 1169
    .line 1170
    .line 1171
    .line 1172
    .line 1173
    .line 1174
    .line 1175
    .line 1176
    .line 1177
    .line 1178
    .line 1179
    .line 1180
    .line 1181
    .line 1182
    .line 1183
    .line 1184
    .line 1185
    .line 1186
    .line 1187
    .line 1188
    .line 1189
    .line 1190
    .line 1191
    .line 1192
    .line 1193
    .line 1194
    .line 1195
    .line 1196
    .line 1197
    .line 1198
    .line 1199
    .line 1200
    .line 1201
    .line 1202
    .line 1203
    .line 1204
    .line 1205
    .line 1206
    .line 1207
    .line 1208
    .line 1209
    .line 1210
    .line 1211
    .line 1212
    .line 1213
    .line 1214
    .line 1215
    .line 1216
    .line 1217
    .line 1218
    .line 1219
    .line 1220
    .line 1221
    .line 1222
    .line 1223
    .line 1224
    .line 1225
    .line 1226
    .line 1227
    .line 1228
    .line 1229
    .line 1230
    .line 1231
    .line 1232
    .line 1233
    .line 1234
    .line 1235
    .line 1236
    .line 1237
    .line 1238
    .line 1239
    .line 1240
    .line 1241
    .line 1242
    .line 1243
    .line 1244
    .line 1245
    .line 1246
    .line 1247
    .line 1248
    .line 1249
    .line 1250
    .line 1251
    .line 1252
    .line 1253
    .line 1254
    .line 1255
    .line 1256
    .line 1257
    .line 1258
    .line 1259
    .line 1260
    .line 1261
    .line 1262
    .line 1263
    .line 1264
    .line 1265
    .line 1266
    .line 1267
    .line 1268
    .line 1269
    .line 1270
    .line 1271
    .line 1272
    .line 1273
    .line 1274
    .line 1275
    .line 1276
    .line 1277
    .line 1278
    .line 1279
    .line 1280
    .line 1281
    .line 1282
    .line 1283
    .line 1284
    .line 1285
    .line 1286
    .line 1287
    .line 1288
    .line 1289
    .line 1290
    .line 1291
    .line 1292
    .line 1293
    .line 1294
    .line 1295
    .line 1296
    .line 1297
    .line 1298
    .line 1299
    .line 1300
    .line 1301
    .line 1302
    .line 1303
    .line 1304
    .line 1305
    .line 1306
    .line 1307
    .line 1308
    .line 1309
    .line 1310
    .line 1311
    .line 1312
    .line 1313
    .line 1314
    .line 1315
    .line 1316
    .line 1317
    .line 1318
    .line 1319
    .line 1320
    .line 1321
    .line 1322
    .line 1323
    .line 1324
    .line 1325
    .line 1326
    .line 1327
    .line 1328
    .line 1329
    .line 1330
    .line 1331
    .line 1332
    .line 1333
    .line 1334
    .line 1335
    .line 1336
    .line 1337
    .line 1338
    .line 1339
    .line 1340
    .line 1341
    .line 1342
    .line 1343
    .line 1344
    .line 1345
    .line 1346
    .line 1347
    .line 1348
    .line 1349
    .line 1350
    .line 1351
    .line 1352
    .line 1353
    .line 1354
    .line 1355
    .line 1356
    .line 1357
    .line 1358
    .line 1359
    .line 1360
    .line 1361
    .line 1362
    .line 1363
    .line 1364
    .line 1365
    .line 1366
    .line 1367
    .line 1368
    .line 1369
    .line 1370
    .line 1371
    .line 1372
    .line 1373
    .line 1374
    .line 1375
    .line 1376
    .line 1377
    .line 1378
    .line 1379
    .line 1380
    .line 1381
    .line 1382
    .line 1383
    .line 1384
    .line 1385
    .line 1386
    .line 1387
    .line 1388
    .line 1389
    .line 1390
    .line 1391
    .line 1392
    .line 1393
    .line 1394
    .line 1395
    .line 1396
    .line 1397
    .line 1398
    .line 1399
    .line 1400
    .line 1401
    .line 1402
    .line 1403
    .line 1404
    .line 1405
    .line 1406
    .line 1407
    .line 1408
    .line 1409
    .line 1410
    .line 1411
    .line 1412
    .line 1413
    .line 1414
    .line 1415
    .line 1416
    .line 1417
    .line 1418
    .line 1419
    .line 1420
.end method

.method private w(Lcom/alphainventor/filemanager/file/o;Lcom/alphainventor/filemanager/file/n;)V
    .locals 7

    .line 1
    if-eqz p2, :cond_5

    .line 2
    .line 3
    invoke-interface {p2}, Lax/f3/b;->isDirectory()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto/16 :goto_4

    .line 10
    .line 11
    :cond_0
    invoke-interface {p2}, Lax/f3/b;->o()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    invoke-static {}, Lax/sb/c;->h()Lax/sb/b;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-virtual {p1}, Lax/sb/b;->g()Lax/sb/b;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    const-string v0, "ADD SUB FILE NOT EXIST"

    .line 26
    .line 27
    invoke-virtual {p1, v0}, Lax/sb/b;->b(Ljava/lang/String;)Lax/sb/b;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 34
    .line 35
    .line 36
    const-string v1, "location:"

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {p2}, Lcom/alphainventor/filemanager/file/n;->S()Lax/f3/K;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    const-string v1, ","

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {p2}, Lcom/alphainventor/filemanager/file/n;->E()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p2

    .line 57
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p2

    .line 64
    invoke-virtual {p1, p2}, Lax/sb/b;->h(Ljava/lang/Object;)Lax/sb/b;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    invoke-virtual {p1}, Lax/sb/b;->i()V

    .line 69
    .line 70
    .line 71
    return-void

    .line 72
    :cond_1
    iget-object v0, p0, Lax/Z2/e$j;->k:Lax/Z2/e;

    .line 73
    .line 74
    invoke-static {v0}, Lax/Z2/e;->V1(Lax/Z2/e;)I

    .line 75
    .line 76
    .line 77
    move-result v0

    .line 78
    const/4 v1, 0x0

    .line 79
    if-eqz v0, :cond_2

    .line 80
    .line 81
    iget-object v0, p0, Lax/Z2/e$j;->k:Lax/Z2/e;

    .line 82
    .line 83
    invoke-static {v0, p2}, Lax/Z2/e;->X1(Lax/Z2/e;Lcom/alphainventor/filemanager/file/n;)Z

    .line 84
    .line 85
    .line 86
    move-result v0

    .line 87
    if-eqz v0, :cond_2

    .line 88
    .line 89
    iget-object v0, p0, Lax/Z2/e$j;->k:Lax/Z2/e;

    .line 90
    .line 91
    invoke-virtual {v0}, Lax/Z2/j;->w()Lax/Z2/v;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    iget-object v2, p0, Lax/Z2/e$j;->k:Lax/Z2/e;

    .line 96
    .line 97
    invoke-virtual {v2}, Lax/Z2/j;->w()Lax/Z2/v;

    .line 98
    .line 99
    .line 100
    move-result-object v2

    .line 101
    invoke-virtual {v2}, Lax/Z2/v;->K()I

    .line 102
    .line 103
    .line 104
    move-result v2

    .line 105
    iget-object v3, p0, Lax/Z2/e$j;->k:Lax/Z2/e;

    .line 106
    .line 107
    invoke-static {v3}, Lax/Z2/e;->V1(Lax/Z2/e;)I

    .line 108
    .line 109
    .line 110
    move-result v3

    .line 111
    sub-int/2addr v2, v3

    .line 112
    invoke-virtual {v0, v2}, Lax/Z2/v;->b0(I)V

    .line 113
    .line 114
    .line 115
    iget-object v0, p0, Lax/Z2/e$j;->k:Lax/Z2/e;

    .line 116
    .line 117
    invoke-virtual {v0}, Lax/Z2/j;->w()Lax/Z2/v;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    iget-object v2, p0, Lax/Z2/e$j;->k:Lax/Z2/e;

    .line 122
    .line 123
    invoke-virtual {v2}, Lax/Z2/j;->w()Lax/Z2/v;

    .line 124
    .line 125
    .line 126
    move-result-object v2

    .line 127
    invoke-virtual {v2}, Lax/Z2/v;->L()J

    .line 128
    .line 129
    .line 130
    move-result-wide v2

    .line 131
    iget-object v4, p0, Lax/Z2/e$j;->k:Lax/Z2/e;

    .line 132
    .line 133
    invoke-static {v4}, Lax/Z2/e;->Y1(Lax/Z2/e;)J

    .line 134
    .line 135
    .line 136
    move-result-wide v4

    .line 137
    sub-long/2addr v2, v4

    .line 138
    invoke-virtual {v0, v2, v3}, Lax/Z2/v;->c0(J)V

    .line 139
    .line 140
    .line 141
    const/4 v0, 0x1

    .line 142
    goto :goto_0

    .line 143
    :cond_2
    const/4 v0, 0x0

    .line 144
    :goto_0
    :try_start_0
    sget-object v2, Lcom/alphainventor/filemanager/file/m$f;->q:Lcom/alphainventor/filemanager/file/m$f;

    .line 145
    .line 146
    invoke-virtual {p1, p2, v2, v1, v1}, Lcom/alphainventor/filemanager/file/o;->O(Lcom/alphainventor/filemanager/file/n;Lcom/alphainventor/filemanager/file/m$f;ZZ)Ljava/util/List;

    .line 147
    .line 148
    .line 149
    move-result-object v2

    .line 150
    const-string v3, "DateDown"

    .line 151
    .line 152
    invoke-static {v3}, Lax/f3/q;->c(Ljava/lang/String;)Lax/f3/q;

    .line 153
    .line 154
    .line 155
    move-result-object v3

    .line 156
    invoke-static {v2, v3}, Lax/f3/q;->g(Ljava/util/List;Lax/f3/q;)Ljava/util/List;

    .line 157
    .line 158
    .line 159
    move-result-object v2

    .line 160
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 161
    .line 162
    .line 163
    move-result-object v2

    .line 164
    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 165
    .line 166
    .line 167
    move-result v3

    .line 168
    if-eqz v3, :cond_5

    .line 169
    .line 170
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 171
    .line 172
    .line 173
    move-result-object v3

    .line 174
    check-cast v3, Lcom/alphainventor/filemanager/file/n;
    :try_end_0
    .catch Lax/e3/j; {:try_start_0 .. :try_end_0} :catch_0

    .line 175
    .line 176
    if-eqz v0, :cond_4

    .line 177
    .line 178
    :try_start_1
    iget-object v4, p0, Lax/Z2/e$j;->k:Lax/Z2/e;

    .line 179
    .line 180
    invoke-static {v4}, Lax/Z2/e;->Z1(Lax/Z2/e;)Ljava/util/HashMap;

    .line 181
    .line 182
    .line 183
    move-result-object v5

    .line 184
    invoke-static {}, Lax/Z2/e;->x0()Lax/z3/c;

    .line 185
    .line 186
    .line 187
    move-result-object v6

    .line 188
    invoke-static {v4, p1, v3, v5, v6}, Lax/Z2/e;->y0(Lax/Z2/e;Lcom/alphainventor/filemanager/file/o;Lcom/alphainventor/filemanager/file/n;Ljava/util/HashMap;Lax/z3/c;)V
    :try_end_1
    .catch Lax/e3/a; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lax/e3/j; {:try_start_1 .. :try_end_1} :catch_0

    .line 189
    .line 190
    .line 191
    goto :goto_2

    .line 192
    :catch_0
    move-exception p1

    .line 193
    goto :goto_3

    .line 194
    :catch_1
    :cond_4
    :goto_2
    :try_start_2
    iget-object v4, p0, Lax/Z2/e$j;->k:Lax/Z2/e;

    .line 195
    .line 196
    invoke-static {v4}, Lax/Z2/e;->z0(Lax/Z2/e;)Ljava/util/LinkedList;

    .line 197
    .line 198
    .line 199
    move-result-object v4

    .line 200
    new-instance v5, Lax/Z2/e$m;

    .line 201
    .line 202
    invoke-direct {v5, v3, v1, v1, v1}, Lax/Z2/e$m;-><init>(Lcom/alphainventor/filemanager/file/n;ZII)V

    .line 203
    .line 204
    .line 205
    invoke-virtual {v4, v5}, Ljava/util/LinkedList;->push(Ljava/lang/Object;)V

    .line 206
    .line 207
    .line 208
    iget-object v4, p0, Lax/Z2/e$j;->k:Lax/Z2/e;

    .line 209
    .line 210
    invoke-static {v4}, Lax/Z2/e;->B0(Lax/Z2/e;)Ljava/util/HashMap;

    .line 211
    .line 212
    .line 213
    move-result-object v4

    .line 214
    invoke-virtual {p2}, Lcom/alphainventor/filemanager/file/n;->E()Ljava/lang/String;

    .line 215
    .line 216
    .line 217
    move-result-object v5

    .line 218
    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    .line 220
    .line 221
    move-result-object v4

    .line 222
    check-cast v4, Ljava/lang/String;

    .line 223
    .line 224
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 225
    .line 226
    .line 227
    move-result v5

    .line 228
    if-nez v5, :cond_3

    .line 229
    .line 230
    iget-object v5, p0, Lax/Z2/e$j;->k:Lax/Z2/e;

    .line 231
    .line 232
    invoke-static {v5}, Lax/Z2/e;->B0(Lax/Z2/e;)Ljava/util/HashMap;

    .line 233
    .line 234
    .line 235
    move-result-object v5

    .line 236
    invoke-virtual {v3}, Lcom/alphainventor/filemanager/file/n;->E()Ljava/lang/String;

    .line 237
    .line 238
    .line 239
    move-result-object v3

    .line 240
    invoke-virtual {v5, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Lax/e3/j; {:try_start_2 .. :try_end_2} :catch_0

    .line 241
    .line 242
    .line 243
    goto :goto_1

    .line 244
    :goto_3
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 245
    .line 246
    .line 247
    :cond_5
    :goto_4
    return-void
    .line 248
    .line 249
    .line 250
    .line 251
    .line 252
    .line 253
    .line 254
    .line 255
    .line 256
    .line 257
    .line 258
    .line 259
    .line 260
    .line 261
    .line 262
    .line 263
    .line 264
    .line 265
    .line 266
    .line 267
    .line 268
    .line 269
    .line 270
    .line 271
    .line 272
    .line 273
    .line 274
    .line 275
    .line 276
    .line 277
    .line 278
    .line 279
    .line 280
    .line 281
    .line 282
    .line 283
    .line 284
    .line 285
    .line 286
    .line 287
    .line 288
    .line 289
    .line 290
    .line 291
    .line 292
    .line 293
    .line 294
    .line 295
    .line 296
    .line 297
    .line 298
    .line 299
    .line 300
    .line 301
    .line 302
    .line 303
    .line 304
    .line 305
    .line 306
    .line 307
    .line 308
    .line 309
    .line 310
    .line 311
    .line 312
    .line 313
    .line 314
    .line 315
    .line 316
    .line 317
    .line 318
    .line 319
    .line 320
    .line 321
    .line 322
    .line 323
    .line 324
    .line 325
    .line 326
    .line 327
    .line 328
    .line 329
    .line 330
    .line 331
    .line 332
    .line 333
    .line 334
    .line 335
    .line 336
    .line 337
    .line 338
    .line 339
    .line 340
    .line 341
    .line 342
    .line 343
    .line 344
    .line 345
    .line 346
    .line 347
    .line 348
    .line 349
    .line 350
    .line 351
    .line 352
    .line 353
    .line 354
    .line 355
    .line 356
    .line 357
    .line 358
    .line 359
    .line 360
    .line 361
    .line 362
    .line 363
    .line 364
    .line 365
    .line 366
    .line 367
    .line 368
    .line 369
    .line 370
    .line 371
    .line 372
    .line 373
    .line 374
    .line 375
    .line 376
    .line 377
    .line 378
    .line 379
    .line 380
    .line 381
    .line 382
    .line 383
    .line 384
    .line 385
    .line 386
    .line 387
    .line 388
    .line 389
    .line 390
    .line 391
    .line 392
    .line 393
    .line 394
    .line 395
    .line 396
    .line 397
    .line 398
    .line 399
    .line 400
    .line 401
    .line 402
    .line 403
    .line 404
    .line 405
    .line 406
    .line 407
    .line 408
    .line 409
    .line 410
    .line 411
    .line 412
    .line 413
    .line 414
    .line 415
    .line 416
    .line 417
    .line 418
    .line 419
    .line 420
    .line 421
    .line 422
    .line 423
    .line 424
    .line 425
    .line 426
    .line 427
    .line 428
    .line 429
    .line 430
    .line 431
    .line 432
    .line 433
    .line 434
    .line 435
    .line 436
    .line 437
    .line 438
    .line 439
    .line 440
    .line 441
    .line 442
    .line 443
    .line 444
    .line 445
    .line 446
    .line 447
    .line 448
    .line 449
    .line 450
    .line 451
    .line 452
    .line 453
    .line 454
    .line 455
    .line 456
    .line 457
    .line 458
    .line 459
    .line 460
    .line 461
    .line 462
    .line 463
    .line 464
    .line 465
    .line 466
    .line 467
    .line 468
    .line 469
    .line 470
    .line 471
    .line 472
    .line 473
    .line 474
    .line 475
    .line 476
    .line 477
    .line 478
    .line 479
    .line 480
    .line 481
    .line 482
    .line 483
    .line 484
    .line 485
    .line 486
    .line 487
    .line 488
    .line 489
    .line 490
    .line 491
    .line 492
    .line 493
    .line 494
    .line 495
    .line 496
    .line 497
    .line 498
    .line 499
    .line 500
    .line 501
.end method

.method private x(Lcom/alphainventor/filemanager/file/n;Lcom/alphainventor/filemanager/file/n;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lax/e3/j;
        }
    .end annotation

    .line 1
    invoke-interface {p2}, Lax/f3/b;->o()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_2

    .line 7
    .line 8
    iget-object v0, p0, Lax/Z2/e$j;->k:Lax/Z2/e;

    .line 9
    .line 10
    invoke-static {v0}, Lax/Z2/e;->D0(Lax/Z2/e;)Lcom/alphainventor/filemanager/file/o;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0, p2, v1}, Lcom/alphainventor/filemanager/file/o;->k(Lcom/alphainventor/filemanager/file/n;Z)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    iget-object v0, p0, Lax/Z2/e$j;->k:Lax/Z2/e;

    .line 21
    .line 22
    invoke-static {v0}, Lax/Z2/e;->E0(Lax/Z2/e;)Ljava/util/List;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    new-instance v2, Ljava/util/AbstractMap$SimpleEntry;

    .line 27
    .line 28
    new-instance v3, Lax/Z2/e$g;

    .line 29
    .line 30
    invoke-interface {p1}, Lax/f3/b;->q()J

    .line 31
    .line 32
    .line 33
    move-result-wide v4

    .line 34
    invoke-virtual {p1}, Lcom/alphainventor/filemanager/file/n;->D()Lcom/alphainventor/filemanager/file/p;

    .line 35
    .line 36
    .line 37
    move-result-object v6

    .line 38
    invoke-direct {v3, v4, v5, v6}, Lax/Z2/e$g;-><init>(JLcom/alphainventor/filemanager/file/p;)V

    .line 39
    .line 40
    .line 41
    invoke-direct {v2, p2, v3}, Ljava/util/AbstractMap$SimpleEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    invoke-virtual {p2}, Lcom/alphainventor/filemanager/file/n;->Q()Lax/U2/f;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-static {v0}, Lax/U2/f;->U(Lax/U2/f;)Z

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    if-eqz v0, :cond_0

    .line 56
    .line 57
    invoke-virtual {p2}, Lcom/alphainventor/filemanager/file/n;->B()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    invoke-static {v0}, Lax/f3/d0;->M(Ljava/lang/String;)Z

    .line 62
    .line 63
    .line 64
    move-result v2

    .line 65
    if-nez v2, :cond_0

    .line 66
    .line 67
    iget-object v2, p0, Lax/Z2/e$j;->k:Lax/Z2/e;

    .line 68
    .line 69
    invoke-static {v2}, Lax/Z2/e;->D0(Lax/Z2/e;)Lcom/alphainventor/filemanager/file/o;

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    invoke-virtual {p2}, Lcom/alphainventor/filemanager/file/n;->E()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v3

    .line 77
    invoke-virtual {v2, v3}, Lcom/alphainventor/filemanager/file/o;->a1(Ljava/lang/String;)Lcom/alphainventor/filemanager/file/n;

    .line 78
    .line 79
    .line 80
    move-result-object v2

    .line 81
    invoke-interface {v2}, Lax/f3/b;->o()Z

    .line 82
    .line 83
    .line 84
    move-result v2

    .line 85
    if-nez v2, :cond_0

    .line 86
    .line 87
    invoke-virtual {p2}, Lcom/alphainventor/filemanager/file/n;->U()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v2

    .line 91
    invoke-static {v0}, Lax/f3/d0;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    invoke-static {v2, v0}, Lax/f3/d0;->Q(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    iget-object v2, p0, Lax/Z2/e$j;->k:Lax/Z2/e;

    .line 100
    .line 101
    invoke-static {v2}, Lax/Z2/e;->D0(Lax/Z2/e;)Lcom/alphainventor/filemanager/file/o;

    .line 102
    .line 103
    .line 104
    move-result-object v2

    .line 105
    invoke-virtual {v2, v0}, Lcom/alphainventor/filemanager/file/o;->a1(Ljava/lang/String;)Lcom/alphainventor/filemanager/file/n;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    invoke-interface {v0}, Lax/f3/b;->o()Z

    .line 110
    .line 111
    .line 112
    move-result v2

    .line 113
    if-eqz v2, :cond_0

    .line 114
    .line 115
    iget-object v2, p0, Lax/Z2/e$j;->k:Lax/Z2/e;

    .line 116
    .line 117
    invoke-virtual {p1}, Lcom/alphainventor/filemanager/file/n;->E()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v3

    .line 121
    invoke-virtual {v0}, Lcom/alphainventor/filemanager/file/n;->E()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    invoke-static {v2, v3, v0}, Lax/Z2/e;->F0(Lax/Z2/e;Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    :cond_0
    iget-object v0, p0, Lax/Z2/e$j;->k:Lax/Z2/e;

    .line 129
    .line 130
    invoke-virtual {p2}, Lcom/alphainventor/filemanager/file/n;->E()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object p2

    .line 134
    invoke-static {v0, p2}, Lax/Z2/e;->H0(Lax/Z2/e;Ljava/lang/String;)Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    goto :goto_0

    .line 138
    :cond_1
    new-instance p1, Lax/e3/j;

    .line 139
    .line 140
    const-string p2, "Could not create folder in addSubFiles"

    .line 141
    .line 142
    invoke-direct {p1, p2}, Lax/e3/j;-><init>(Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    throw p1

    .line 146
    :cond_2
    :goto_0
    iget-object p2, p0, Lax/Z2/e$j;->k:Lax/Z2/e;

    .line 147
    .line 148
    invoke-static {p2}, Lax/Z2/e;->I0(Lax/Z2/e;)Z

    .line 149
    .line 150
    .line 151
    move-result p2

    .line 152
    if-eqz p2, :cond_3

    .line 153
    .line 154
    iget-object p2, p0, Lax/Z2/e$j;->k:Lax/Z2/e;

    .line 155
    .line 156
    invoke-static {p2}, Lax/Z2/e;->J0(Lax/Z2/e;)Z

    .line 157
    .line 158
    .line 159
    move-result p2

    .line 160
    if-nez p2, :cond_3

    .line 161
    .line 162
    iget-object p2, p0, Lax/Z2/e$j;->k:Lax/Z2/e;

    .line 163
    .line 164
    invoke-virtual {p2}, Lax/Z2/j;->w()Lax/Z2/v;

    .line 165
    .line 166
    .line 167
    move-result-object p2

    .line 168
    invoke-virtual {p2}, Lax/Z2/v;->n()I

    .line 169
    .line 170
    .line 171
    move-result p2

    .line 172
    iget-object v0, p0, Lax/Z2/e$j;->k:Lax/Z2/e;

    .line 173
    .line 174
    invoke-virtual {v0}, Lax/Z2/j;->w()Lax/Z2/v;

    .line 175
    .line 176
    .line 177
    move-result-object v0

    .line 178
    invoke-virtual {v0}, Lax/Z2/v;->C()I

    .line 179
    .line 180
    .line 181
    move-result v0

    .line 182
    iget-object v2, p0, Lax/Z2/e$j;->k:Lax/Z2/e;

    .line 183
    .line 184
    invoke-static {v2}, Lax/Z2/e;->z0(Lax/Z2/e;)Ljava/util/LinkedList;

    .line 185
    .line 186
    .line 187
    move-result-object v2

    .line 188
    new-instance v3, Lax/Z2/e$m;

    .line 189
    .line 190
    const/4 v4, 0x1

    .line 191
    invoke-direct {v3, p1, v4, p2, v0}, Lax/Z2/e$m;-><init>(Lcom/alphainventor/filemanager/file/n;ZII)V

    .line 192
    .line 193
    .line 194
    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->push(Ljava/lang/Object;)V

    .line 195
    .line 196
    .line 197
    :cond_3
    iget-object p2, p0, Lax/Z2/e$j;->k:Lax/Z2/e;

    .line 198
    .line 199
    invoke-static {p2}, Lax/Z2/e;->M0(Lax/Z2/e;)Lcom/alphainventor/filemanager/file/o;

    .line 200
    .line 201
    .line 202
    move-result-object p2

    .line 203
    invoke-direct {p0, p2, p1}, Lax/Z2/e$j;->w(Lcom/alphainventor/filemanager/file/o;Lcom/alphainventor/filemanager/file/n;)V

    .line 204
    .line 205
    .line 206
    iget-object p2, p0, Lax/Z2/e$j;->k:Lax/Z2/e;

    .line 207
    .line 208
    invoke-static {p2}, Lax/Z2/e;->I0(Lax/Z2/e;)Z

    .line 209
    .line 210
    .line 211
    move-result p2

    .line 212
    if-eqz p2, :cond_5

    .line 213
    .line 214
    iget-object p2, p0, Lax/Z2/e$j;->k:Lax/Z2/e;

    .line 215
    .line 216
    invoke-static {p2}, Lax/Z2/e;->O0(Lax/Z2/e;)Ljava/util/List;

    .line 217
    .line 218
    .line 219
    move-result-object p2

    .line 220
    if-nez p2, :cond_4

    .line 221
    .line 222
    iget-object p2, p0, Lax/Z2/e$j;->k:Lax/Z2/e;

    .line 223
    .line 224
    new-instance v0, Ljava/util/ArrayList;

    .line 225
    .line 226
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 227
    .line 228
    .line 229
    invoke-static {p2, v0}, Lax/Z2/e;->P0(Lax/Z2/e;Ljava/util/List;)Ljava/util/List;

    .line 230
    .line 231
    .line 232
    :cond_4
    iget-object p2, p0, Lax/Z2/e$j;->k:Lax/Z2/e;

    .line 233
    .line 234
    invoke-static {p2}, Lax/Z2/e;->O0(Lax/Z2/e;)Ljava/util/List;

    .line 235
    .line 236
    .line 237
    move-result-object p2

    .line 238
    invoke-interface {p2, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 239
    .line 240
    .line 241
    iget-object p2, p0, Lax/Z2/e$j;->k:Lax/Z2/e;

    .line 242
    .line 243
    invoke-static {p2}, Lax/Z2/e;->Q0(Lax/Z2/e;)Ljava/util/HashSet;

    .line 244
    .line 245
    .line 246
    move-result-object p2

    .line 247
    invoke-virtual {p1}, Lcom/alphainventor/filemanager/file/n;->R()Ljava/lang/String;

    .line 248
    .line 249
    .line 250
    move-result-object p1

    .line 251
    invoke-virtual {p2, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 252
    .line 253
    .line 254
    iget-object p1, p0, Lax/Z2/e$j;->k:Lax/Z2/e;

    .line 255
    .line 256
    invoke-static {p1}, Lax/Z2/e;->T0(Lax/Z2/e;)I

    .line 257
    .line 258
    .line 259
    :cond_5
    return-void
    .line 260
    .line 261
    .line 262
    .line 263
    .line 264
    .line 265
    .line 266
    .line 267
    .line 268
    .line 269
    .line 270
    .line 271
    .line 272
    .line 273
    .line 274
    .line 275
    .line 276
    .line 277
    .line 278
    .line 279
    .line 280
    .line 281
    .line 282
    .line 283
    .line 284
    .line 285
    .line 286
    .line 287
    .line 288
    .line 289
    .line 290
    .line 291
    .line 292
    .line 293
    .line 294
    .line 295
    .line 296
    .line 297
    .line 298
    .line 299
    .line 300
    .line 301
    .line 302
    .line 303
    .line 304
    .line 305
    .line 306
    .line 307
    .line 308
    .line 309
    .line 310
    .line 311
    .line 312
    .line 313
    .line 314
    .line 315
    .line 316
    .line 317
    .line 318
    .line 319
    .line 320
    .line 321
    .line 322
    .line 323
    .line 324
    .line 325
    .line 326
    .line 327
    .line 328
    .line 329
    .line 330
    .line 331
    .line 332
    .line 333
    .line 334
    .line 335
    .line 336
    .line 337
    .line 338
    .line 339
    .line 340
    .line 341
    .line 342
    .line 343
    .line 344
    .line 345
    .line 346
    .line 347
    .line 348
    .line 349
    .line 350
    .line 351
    .line 352
    .line 353
    .line 354
    .line 355
    .line 356
    .line 357
    .line 358
    .line 359
    .line 360
    .line 361
    .line 362
    .line 363
    .line 364
    .line 365
    .line 366
    .line 367
    .line 368
    .line 369
    .line 370
    .line 371
    .line 372
    .line 373
    .line 374
    .line 375
    .line 376
    .line 377
    .line 378
    .line 379
    .line 380
    .line 381
    .line 382
    .line 383
    .line 384
    .line 385
    .line 386
    .line 387
    .line 388
    .line 389
    .line 390
    .line 391
    .line 392
    .line 393
    .line 394
    .line 395
    .line 396
    .line 397
    .line 398
    .line 399
    .line 400
    .line 401
    .line 402
    .line 403
    .line 404
    .line 405
    .line 406
    .line 407
    .line 408
    .line 409
    .line 410
    .line 411
    .line 412
    .line 413
    .line 414
    .line 415
    .line 416
    .line 417
    .line 418
    .line 419
    .line 420
    .line 421
    .line 422
    .line 423
    .line 424
    .line 425
    .line 426
    .line 427
    .line 428
    .line 429
    .line 430
    .line 431
    .line 432
    .line 433
    .line 434
    .line 435
    .line 436
    .line 437
    .line 438
    .line 439
    .line 440
    .line 441
    .line 442
    .line 443
    .line 444
    .line 445
    .line 446
    .line 447
    .line 448
    .line 449
    .line 450
    .line 451
    .line 452
    .line 453
    .line 454
    .line 455
    .line 456
    .line 457
    .line 458
    .line 459
    .line 460
    .line 461
    .line 462
    .line 463
    .line 464
    .line 465
    .line 466
    .line 467
    .line 468
    .line 469
    .line 470
    .line 471
    .line 472
    .line 473
    .line 474
    .line 475
    .line 476
    .line 477
    .line 478
    .line 479
    .line 480
    .line 481
    .line 482
    .line 483
    .line 484
    .line 485
    .line 486
    .line 487
    .line 488
    .line 489
    .line 490
    .line 491
    .line 492
    .line 493
    .line 494
    .line 495
    .line 496
    .line 497
    .line 498
    .line 499
    .line 500
    .line 501
.end method

.method private y(Lcom/alphainventor/filemanager/file/n;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lax/e3/j;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lax/Z2/e$j;->k:Lax/Z2/e;

    .line 2
    .line 3
    invoke-static {v0}, Lax/Z2/e;->D0(Lax/Z2/e;)Lcom/alphainventor/filemanager/file/o;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/alphainventor/filemanager/file/o;->A()Lax/U2/f;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    sget-object v1, Lax/U2/f;->u0:Lax/U2/f;

    .line 12
    .line 13
    if-ne v0, v1, :cond_4

    .line 14
    .line 15
    iget-object v1, p0, Lax/Z2/e$j;->k:Lax/Z2/e;

    .line 16
    .line 17
    invoke-virtual {v1}, Lax/Z2/j;->w()Lax/Z2/v;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v1}, Lax/Z2/v;->z()J

    .line 22
    .line 23
    .line 24
    move-result-wide v1

    .line 25
    const-wide/32 v3, 0x1dcd6500

    .line 26
    .line 27
    .line 28
    cmp-long v5, v1, v3

    .line 29
    .line 30
    if-gtz v5, :cond_0

    .line 31
    .line 32
    goto/16 :goto_3

    .line 33
    .line 34
    :cond_0
    :try_start_0
    iget-object v1, p0, Lax/Z2/e$j;->k:Lax/Z2/e;

    .line 35
    .line 36
    invoke-static {v1}, Lax/Z2/e;->h1(Lax/Z2/e;)Ljava/lang/Long;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    if-eqz v1, :cond_4

    .line 41
    .line 42
    iget-object v1, p0, Lax/Z2/e$j;->k:Lax/Z2/e;

    .line 43
    .line 44
    invoke-static {v1}, Lax/Z2/e;->D0(Lax/Z2/e;)Lcom/alphainventor/filemanager/file/o;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    invoke-virtual {v1}, Lcom/alphainventor/filemanager/file/o;->v()J

    .line 49
    .line 50
    .line 51
    move-result-wide v1

    .line 52
    const-wide/16 v3, 0x0

    .line 53
    .line 54
    cmp-long v5, v1, v3

    .line 55
    .line 56
    if-lez v5, :cond_4

    .line 57
    .line 58
    iget-object v5, p0, Lax/Z2/e$j;->k:Lax/Z2/e;

    .line 59
    .line 60
    invoke-static {v5}, Lax/Z2/e;->h1(Lax/Z2/e;)Ljava/lang/Long;

    .line 61
    .line 62
    .line 63
    move-result-object v5

    .line 64
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    .line 65
    .line 66
    .line 67
    move-result-wide v5

    .line 68
    sub-long/2addr v5, v1

    .line 69
    iget-object v1, p0, Lax/Z2/e$j;->k:Lax/Z2/e;

    .line 70
    .line 71
    invoke-virtual {v1}, Lax/Z2/j;->w()Lax/Z2/v;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    invoke-virtual {v1}, Lax/Z2/v;->z()J

    .line 76
    .line 77
    .line 78
    move-result-wide v1

    .line 79
    const-wide/16 v7, 0x2

    .line 80
    .line 81
    mul-long v1, v1, v7

    .line 82
    .line 83
    const-wide/16 v7, 0x3

    .line 84
    .line 85
    div-long/2addr v1, v7

    .line 86
    cmp-long v7, v5, v3

    .line 87
    .line 88
    if-lez v7, :cond_4

    .line 89
    .line 90
    cmp-long v3, v5, v1

    .line 91
    .line 92
    if-gez v3, :cond_4

    .line 93
    .line 94
    invoke-direct {p0, p1}, Lax/Z2/e$j;->A(Lcom/alphainventor/filemanager/file/n;)Z

    .line 95
    .line 96
    .line 97
    move-result p1

    .line 98
    xor-int/lit8 p1, p1, 0x1

    .line 99
    .line 100
    iget-object v1, p0, Lax/Z2/e$j;->k:Lax/Z2/e;

    .line 101
    .line 102
    invoke-static {v1}, Lax/Z2/e;->j1(Lax/Z2/e;)Lax/Y7/q;

    .line 103
    .line 104
    .line 105
    move-result-object v1

    .line 106
    invoke-virtual {v1}, Lax/Y7/s;->iterator()Ljava/util/Iterator;

    .line 107
    .line 108
    .line 109
    move-result-object v1

    .line 110
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 111
    .line 112
    .line 113
    move-result v2

    .line 114
    if-eqz v2, :cond_2

    .line 115
    .line 116
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object v2

    .line 120
    check-cast v2, Lcom/alphainventor/filemanager/file/n;

    .line 121
    .line 122
    invoke-direct {p0, v2}, Lax/Z2/e$j;->A(Lcom/alphainventor/filemanager/file/n;)Z

    .line 123
    .line 124
    .line 125
    move-result v2

    .line 126
    if-nez v2, :cond_1

    .line 127
    .line 128
    add-int/lit8 p1, p1, 0x1

    .line 129
    .line 130
    goto :goto_0

    .line 131
    :catch_0
    move-exception p1

    .line 132
    goto :goto_1

    .line 133
    :catch_1
    move-exception p1

    .line 134
    goto/16 :goto_2

    .line 135
    .line 136
    :cond_2
    const/16 v1, 0xa

    .line 137
    .line 138
    if-gt p1, v1, :cond_3

    .line 139
    .line 140
    goto/16 :goto_3

    .line 141
    .line 142
    :cond_3
    invoke-static {}, Lax/sb/c;->h()Lax/sb/b;

    .line 143
    .line 144
    .line 145
    move-result-object v1

    .line 146
    invoke-virtual {v1}, Lax/sb/b;->g()Lax/sb/b;

    .line 147
    .line 148
    .line 149
    move-result-object v1

    .line 150
    const-string v2, "SD WRITTEN FILE NOT EXIST"

    .line 151
    .line 152
    invoke-virtual {v1, v2}, Lax/sb/b;->b(Ljava/lang/String;)Lax/sb/b;

    .line 153
    .line 154
    .line 155
    move-result-object v1

    .line 156
    new-instance v2, Ljava/lang/StringBuilder;

    .line 157
    .line 158
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 159
    .line 160
    .line 161
    const-string v3, "location:"

    .line 162
    .line 163
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 167
    .line 168
    .line 169
    const-string v0, ",increased:"

    .line 170
    .line 171
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    .line 173
    .line 174
    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 175
    .line 176
    .line 177
    const-string v0, ",progressed:"

    .line 178
    .line 179
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    .line 181
    .line 182
    iget-object v0, p0, Lax/Z2/e$j;->k:Lax/Z2/e;

    .line 183
    .line 184
    invoke-virtual {v0}, Lax/Z2/j;->w()Lax/Z2/v;

    .line 185
    .line 186
    .line 187
    move-result-object v0

    .line 188
    invoke-virtual {v0}, Lax/Z2/v;->z()J

    .line 189
    .line 190
    .line 191
    move-result-wide v3

    .line 192
    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 193
    .line 194
    .line 195
    const-string v0, ",total:"

    .line 196
    .line 197
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    .line 199
    .line 200
    iget-object v0, p0, Lax/Z2/e$j;->k:Lax/Z2/e;

    .line 201
    .line 202
    invoke-virtual {v0}, Lax/Z2/j;->w()Lax/Z2/v;

    .line 203
    .line 204
    .line 205
    move-result-object v0

    .line 206
    invoke-virtual {v0}, Lax/Z2/v;->L()J

    .line 207
    .line 208
    .line 209
    move-result-wide v3

    .line 210
    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 211
    .line 212
    .line 213
    const-string v0, ",isAllInvalid:"

    .line 214
    .line 215
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    .line 217
    .line 218
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 219
    .line 220
    .line 221
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 222
    .line 223
    .line 224
    move-result-object p1

    .line 225
    invoke-virtual {v1, p1}, Lax/sb/b;->h(Ljava/lang/Object;)Lax/sb/b;

    .line 226
    .line 227
    .line 228
    move-result-object p1

    .line 229
    invoke-virtual {p1}, Lax/sb/b;->i()V
    :try_end_0
    .catch Lax/e3/j; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 230
    .line 231
    .line 232
    new-instance p1, Lax/e3/B;

    .line 233
    .line 234
    const-string v0, "SD card corruption is detected. Written file not exist."

    .line 235
    .line 236
    invoke-direct {p1, v0}, Lax/e3/B;-><init>(Ljava/lang/String;)V

    .line 237
    .line 238
    .line 239
    throw p1

    .line 240
    :goto_1
    invoke-static {}, Lax/sb/c;->h()Lax/sb/b;

    .line 241
    .line 242
    .line 243
    move-result-object v0

    .line 244
    invoke-virtual {v0}, Lax/sb/b;->g()Lax/sb/b;

    .line 245
    .line 246
    .line 247
    move-result-object v0

    .line 248
    const-string v1, "checkLastFileWriteCheck error"

    .line 249
    .line 250
    invoke-virtual {v0, v1}, Lax/sb/b;->b(Ljava/lang/String;)Lax/sb/b;

    .line 251
    .line 252
    .line 253
    move-result-object v0

    .line 254
    invoke-virtual {v0, p1}, Lax/sb/b;->m(Ljava/lang/Throwable;)Lax/sb/b;

    .line 255
    .line 256
    .line 257
    move-result-object v0

    .line 258
    invoke-virtual {v0}, Lax/sb/b;->i()V

    .line 259
    .line 260
    .line 261
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 262
    .line 263
    .line 264
    goto :goto_3

    .line 265
    :goto_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 266
    .line 267
    .line 268
    :cond_4
    :goto_3
    return-void
    .line 269
    .line 270
    .line 271
    .line 272
    .line 273
    .line 274
    .line 275
    .line 276
    .line 277
    .line 278
    .line 279
    .line 280
    .line 281
    .line 282
    .line 283
    .line 284
    .line 285
    .line 286
    .line 287
    .line 288
    .line 289
    .line 290
    .line 291
    .line 292
    .line 293
    .line 294
    .line 295
    .line 296
    .line 297
    .line 298
    .line 299
    .line 300
    .line 301
    .line 302
    .line 303
    .line 304
    .line 305
    .line 306
    .line 307
    .line 308
    .line 309
    .line 310
    .line 311
    .line 312
    .line 313
    .line 314
    .line 315
    .line 316
    .line 317
    .line 318
    .line 319
    .line 320
    .line 321
    .line 322
    .line 323
    .line 324
    .line 325
    .line 326
    .line 327
    .line 328
    .line 329
    .line 330
    .line 331
    .line 332
    .line 333
    .line 334
    .line 335
    .line 336
    .line 337
    .line 338
    .line 339
    .line 340
    .line 341
    .line 342
    .line 343
    .line 344
    .line 345
    .line 346
    .line 347
    .line 348
    .line 349
    .line 350
    .line 351
    .line 352
    .line 353
    .line 354
    .line 355
    .line 356
    .line 357
    .line 358
    .line 359
    .line 360
    .line 361
    .line 362
    .line 363
    .line 364
    .line 365
    .line 366
    .line 367
    .line 368
    .line 369
    .line 370
    .line 371
    .line 372
    .line 373
    .line 374
    .line 375
    .line 376
    .line 377
    .line 378
    .line 379
    .line 380
    .line 381
    .line 382
    .line 383
    .line 384
    .line 385
    .line 386
    .line 387
    .line 388
    .line 389
    .line 390
    .line 391
    .line 392
    .line 393
    .line 394
    .line 395
    .line 396
    .line 397
    .line 398
    .line 399
    .line 400
    .line 401
    .line 402
    .line 403
    .line 404
    .line 405
.end method

.method private z(Lcom/alphainventor/filemanager/file/n;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lax/e3/j;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lax/Z2/e$j;->k:Lax/Z2/e;

    .line 2
    .line 3
    invoke-static {v0}, Lax/Z2/e;->M0(Lax/Z2/e;)Lcom/alphainventor/filemanager/file/o;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/alphainventor/filemanager/file/o;->A()Lax/U2/f;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {v0}, Lax/U2/f;->e0(Lax/U2/f;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    const/4 v1, 0x0

    .line 16
    const/4 v2, 0x1

    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    invoke-virtual {p1}, Lcom/alphainventor/filemanager/file/n;->E()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-static {v0}, Lax/f3/x;->g(Ljava/lang/String;)Lcom/alphainventor/filemanager/file/o;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {p1}, Lcom/alphainventor/filemanager/file/n;->E()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-virtual {v0, p1}, Lcom/alphainventor/filemanager/file/o;->a1(Ljava/lang/String;)Lcom/alphainventor/filemanager/file/n;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-virtual {v0, p1}, Lcom/alphainventor/filemanager/file/o;->N(Lcom/alphainventor/filemanager/file/n;)Ljava/util/List;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    if-eqz p1, :cond_0

    .line 44
    .line 45
    return v2

    .line 46
    :cond_0
    return v1

    .line 47
    :cond_1
    iget-object v0, p0, Lax/Z2/e$j;->k:Lax/Z2/e;

    .line 48
    .line 49
    invoke-static {v0}, Lax/Z2/e;->M0(Lax/Z2/e;)Lcom/alphainventor/filemanager/file/o;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-virtual {v0, p1}, Lcom/alphainventor/filemanager/file/o;->N(Lcom/alphainventor/filemanager/file/n;)Ljava/util/List;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 58
    .line 59
    .line 60
    move-result p1

    .line 61
    if-eqz p1, :cond_2

    .line 62
    .line 63
    return v2

    .line 64
    :cond_2
    return v1
    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    .line 77
    .line 78
    .line 79
    .line 80
    .line 81
    .line 82
    .line 83
    .line 84
    .line 85
    .line 86
    .line 87
    .line 88
    .line 89
    .line 90
    .line 91
    .line 92
    .line 93
    .line 94
    .line 95
    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
.end method


# virtual methods
.method G(Lcom/alphainventor/filemanager/file/n;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lax/Z2/e$j;->k:Lax/Z2/e;

    .line 2
    .line 3
    invoke-static {v0}, Lax/Z2/e;->M0(Lax/Z2/e;)Lcom/alphainventor/filemanager/file/o;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/alphainventor/filemanager/file/o;->p1()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x0

    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    :try_start_0
    iget-object v0, p0, Lax/Z2/e$j;->k:Lax/Z2/e;

    .line 15
    .line 16
    invoke-static {v0}, Lax/Z2/e;->Q0(Lax/Z2/e;)Ljava/util/HashSet;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {p1}, Lcom/alphainventor/filemanager/file/n;->R()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    invoke-virtual {v0, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-eqz v0, :cond_0

    .line 29
    .line 30
    iget-object v0, p0, Lax/Z2/e$j;->k:Lax/Z2/e;

    .line 31
    .line 32
    invoke-static {v0}, Lax/Z2/e;->M0(Lax/Z2/e;)Lcom/alphainventor/filemanager/file/o;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {v0, p1}, Lcom/alphainventor/filemanager/file/o;->g1(Lcom/alphainventor/filemanager/file/n;)V
    :try_end_0
    .catch Lax/e3/j; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    .line 38
    .line 39
    :cond_0
    const/4 p1, 0x1

    .line 40
    return p1

    .line 41
    :catch_0
    return v1

    .line 42
    :cond_1
    :try_start_1
    invoke-direct {p0, p1}, Lax/Z2/e$j;->E(Lcom/alphainventor/filemanager/file/n;)Z

    .line 43
    .line 44
    .line 45
    move-result p1
    :try_end_1
    .catch Lax/e3/j; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lax/e3/a; {:try_start_1 .. :try_end_1} :catch_1

    .line 46
    return p1

    .line 47
    :catch_1
    return v1
    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
.end method

.method protected varargs H([Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 11

    .line 1
    :cond_0
    :try_start_0
    iget-object p1, p0, Lax/Z2/e$j;->k:Lax/Z2/e;

    .line 2
    .line 3
    invoke-virtual {p1}, Lax/Z2/j;->t0()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lax/z3/q;->isCancelled()Z

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    const/4 v0, 0x0

    .line 11
    if-eqz p1, :cond_1

    .line 12
    .line 13
    goto/16 :goto_e

    .line 14
    .line 15
    :cond_1
    invoke-direct {p0}, Lax/Z2/e$j;->K()Z

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    if-eqz p1, :cond_2

    .line 20
    .line 21
    invoke-static {}, Lax/Z2/e;->l1()Ljava/util/logging/Logger;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    new-instance v1, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 28
    .line 29
    .line 30
    const-string v2, "not enough free space. free : "

    .line 31
    .line 32
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    iget-object v2, p0, Lax/Z2/e$j;->k:Lax/Z2/e;

    .line 36
    .line 37
    invoke-static {v2}, Lax/Z2/e;->h1(Lax/Z2/e;)Ljava/lang/Long;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    const-string v2, ", total:"

    .line 45
    .line 46
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    iget-object v2, p0, Lax/Z2/e$j;->k:Lax/Z2/e;

    .line 50
    .line 51
    invoke-virtual {v2}, Lax/Z2/j;->w()Lax/Z2/v;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    invoke-virtual {v2}, Lax/Z2/v;->L()J

    .line 56
    .line 57
    .line 58
    move-result-wide v2

    .line 59
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    invoke-virtual {p1, v1}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    iget-object p1, p0, Lax/Z2/e$j;->k:Lax/Z2/e;

    .line 70
    .line 71
    invoke-virtual {p1}, Lax/Z2/j;->w()Lax/Z2/v;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    sget-object v1, Lax/Z2/v$b;->X:Lax/Z2/v$b;

    .line 76
    .line 77
    iget-object v2, p0, Lax/Z2/e$j;->k:Lax/Z2/e;

    .line 78
    .line 79
    invoke-virtual {v2}, Lax/Z2/j;->w()Lax/Z2/v;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    invoke-virtual {v2}, Lax/Z2/v;->K()I

    .line 84
    .line 85
    .line 86
    move-result v2

    .line 87
    invoke-virtual {p1, v1, v2}, Lax/Z2/v;->c(Lax/Z2/v$b;I)V

    .line 88
    .line 89
    .line 90
    iget-object p1, p0, Lax/Z2/e$j;->k:Lax/Z2/e;

    .line 91
    .line 92
    invoke-virtual {p1}, Lax/Z2/j;->w()Lax/Z2/v;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    iget-object v1, p0, Lax/Z2/e$j;->k:Lax/Z2/e;

    .line 97
    .line 98
    invoke-virtual {v1}, Lax/Z2/j;->w()Lax/Z2/v;

    .line 99
    .line 100
    .line 101
    move-result-object v1

    .line 102
    invoke-virtual {v1}, Lax/Z2/v;->k()I

    .line 103
    .line 104
    .line 105
    move-result v1

    .line 106
    invoke-virtual {p1, v1}, Lax/Z2/v;->a(I)V

    .line 107
    .line 108
    .line 109
    iget-object p1, p0, Lax/Z2/e$j;->k:Lax/Z2/e;

    .line 110
    .line 111
    invoke-static {p1}, Lax/Z2/e;->G1(Lax/Z2/e;)Ljava/util/LinkedList;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    invoke-virtual {p1}, Ljava/util/LinkedList;->clear()V

    .line 116
    .line 117
    .line 118
    iget-object p1, p0, Lax/Z2/e$j;->k:Lax/Z2/e;

    .line 119
    .line 120
    invoke-static {p1}, Lax/Z2/e;->z0(Lax/Z2/e;)Ljava/util/LinkedList;

    .line 121
    .line 122
    .line 123
    move-result-object p1

    .line 124
    invoke-virtual {p1}, Ljava/util/LinkedList;->clear()V

    .line 125
    .line 126
    .line 127
    iget-object p1, p0, Lax/Z2/e$j;->k:Lax/Z2/e;

    .line 128
    .line 129
    const/16 v1, 0xa

    .line 130
    .line 131
    invoke-virtual {p1, v1}, Lax/Z2/j;->p0(I)V

    .line 132
    .line 133
    .line 134
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 135
    .line 136
    .line 137
    move-result-object p1

    .line 138
    return-object p1

    .line 139
    :cond_2
    iget-boolean p1, p0, Lax/Z2/e$j;->h:Z

    .line 140
    .line 141
    if-eqz p1, :cond_3

    .line 142
    .line 143
    iput-boolean v0, p0, Lax/Z2/e$j;->h:Z

    .line 144
    .line 145
    iget-object p1, p0, Lax/Z2/e$j;->k:Lax/Z2/e;

    .line 146
    .line 147
    invoke-static {p1}, Lax/Z2/e;->I1(Lax/Z2/e;)Lcom/alphainventor/filemanager/file/n;

    .line 148
    .line 149
    .line 150
    move-result-object p1

    .line 151
    iget-object v1, p0, Lax/Z2/e$j;->k:Lax/Z2/e;

    .line 152
    .line 153
    invoke-static {v1}, Lax/Z2/e;->w1(Lax/Z2/e;)Lcom/alphainventor/filemanager/file/n;

    .line 154
    .line 155
    .line 156
    move-result-object v1

    .line 157
    iget-object v2, p0, Lax/Z2/e$j;->i:Lax/Z2/j$f;

    .line 158
    .line 159
    invoke-direct {p0, p1, v1, v2}, Lax/Z2/e$j;->Q(Lcom/alphainventor/filemanager/file/n;Lcom/alphainventor/filemanager/file/n;Lax/Z2/j$f;)V

    .line 160
    .line 161
    .line 162
    goto/16 :goto_d

    .line 163
    .line 164
    :cond_3
    iget-boolean p1, p0, Lax/Z2/e$j;->j:Z

    .line 165
    .line 166
    if-eqz p1, :cond_4

    .line 167
    .line 168
    iput-boolean v0, p0, Lax/Z2/e$j;->j:Z

    .line 169
    .line 170
    iget-object p1, p0, Lax/Z2/e$j;->k:Lax/Z2/e;

    .line 171
    .line 172
    invoke-static {p1}, Lax/Z2/e;->I1(Lax/Z2/e;)Lcom/alphainventor/filemanager/file/n;

    .line 173
    .line 174
    .line 175
    move-result-object p1

    .line 176
    iget-object v1, p0, Lax/Z2/e$j;->k:Lax/Z2/e;

    .line 177
    .line 178
    invoke-static {v1}, Lax/Z2/e;->w1(Lax/Z2/e;)Lcom/alphainventor/filemanager/file/n;

    .line 179
    .line 180
    .line 181
    move-result-object v1

    .line 182
    sget-object v2, Lax/Z2/j$f;->q:Lax/Z2/j$f;

    .line 183
    .line 184
    invoke-direct {p0, p1, v1, v2}, Lax/Z2/e$j;->Q(Lcom/alphainventor/filemanager/file/n;Lcom/alphainventor/filemanager/file/n;Lax/Z2/j$f;)V

    .line 185
    .line 186
    .line 187
    goto/16 :goto_d

    .line 188
    .line 189
    :cond_4
    iget-object p1, p0, Lax/Z2/e$j;->k:Lax/Z2/e;

    .line 190
    .line 191
    invoke-static {p1}, Lax/Z2/e;->z0(Lax/Z2/e;)Ljava/util/LinkedList;

    .line 192
    .line 193
    .line 194
    move-result-object p1

    .line 195
    invoke-virtual {p1}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 196
    .line 197
    .line 198
    move-result p1

    .line 199
    const/4 v1, 0x1

    .line 200
    if-nez p1, :cond_6

    .line 201
    .line 202
    iget-object p1, p0, Lax/Z2/e$j;->k:Lax/Z2/e;

    .line 203
    .line 204
    invoke-static {p1}, Lax/Z2/e;->z0(Lax/Z2/e;)Ljava/util/LinkedList;

    .line 205
    .line 206
    .line 207
    move-result-object p1

    .line 208
    invoke-virtual {p1}, Ljava/util/LinkedList;->pop()Ljava/lang/Object;

    .line 209
    .line 210
    .line 211
    move-result-object p1

    .line 212
    check-cast p1, Lax/Z2/e$m;

    .line 213
    .line 214
    iget-boolean v2, p1, Lax/Z2/e$m;->b:Z

    .line 215
    .line 216
    if-eqz v2, :cond_5

    .line 217
    .line 218
    invoke-direct {p0, p1}, Lax/Z2/e$j;->F(Lax/Z2/e$m;)V

    .line 219
    .line 220
    .line 221
    goto/16 :goto_d

    .line 222
    .line 223
    :cond_5
    iget-object p1, p1, Lax/Z2/e$m;->a:Lcom/alphainventor/filemanager/file/n;

    .line 224
    .line 225
    const/4 v2, 0x0

    .line 226
    goto :goto_0

    .line 227
    :cond_6
    iget-object p1, p0, Lax/Z2/e$j;->k:Lax/Z2/e;

    .line 228
    .line 229
    invoke-static {p1}, Lax/Z2/e;->G1(Lax/Z2/e;)Ljava/util/LinkedList;

    .line 230
    .line 231
    .line 232
    move-result-object p1

    .line 233
    invoke-virtual {p1}, Ljava/util/LinkedList;->pop()Ljava/lang/Object;

    .line 234
    .line 235
    .line 236
    move-result-object p1

    .line 237
    check-cast p1, Lcom/alphainventor/filemanager/file/n;

    .line 238
    .line 239
    iget-object v2, p0, Lax/Z2/e$j;->k:Lax/Z2/e;

    .line 240
    .line 241
    invoke-static {v2, p1}, Lax/Z2/e;->K1(Lax/Z2/e;Lcom/alphainventor/filemanager/file/n;)V

    .line 242
    .line 243
    .line 244
    iget-object v2, p0, Lax/Z2/e$j;->k:Lax/Z2/e;

    .line 245
    .line 246
    invoke-virtual {v2}, Lax/Z2/j;->w()Lax/Z2/v;

    .line 247
    .line 248
    .line 249
    move-result-object v3

    .line 250
    invoke-virtual {v3}, Lax/Z2/v;->n()I

    .line 251
    .line 252
    .line 253
    move-result v3

    .line 254
    invoke-static {v2, v3}, Lax/Z2/e;->z1(Lax/Z2/e;I)I

    .line 255
    .line 256
    .line 257
    iget-object v2, p0, Lax/Z2/e$j;->k:Lax/Z2/e;

    .line 258
    .line 259
    invoke-virtual {v2}, Lax/Z2/j;->w()Lax/Z2/v;

    .line 260
    .line 261
    .line 262
    move-result-object v3

    .line 263
    invoke-virtual {v3}, Lax/Z2/v;->G()I

    .line 264
    .line 265
    .line 266
    move-result v3

    .line 267
    invoke-static {v2, v3}, Lax/Z2/e;->B1(Lax/Z2/e;I)I

    .line 268
    .line 269
    .line 270
    iget-object v2, p0, Lax/Z2/e$j;->k:Lax/Z2/e;

    .line 271
    .line 272
    invoke-virtual {v2}, Lax/Z2/j;->w()Lax/Z2/v;

    .line 273
    .line 274
    .line 275
    move-result-object v3

    .line 276
    invoke-virtual {v3}, Lax/Z2/v;->C()I

    .line 277
    .line 278
    .line 279
    move-result v3

    .line 280
    invoke-static {v2, v3}, Lax/Z2/e;->D1(Lax/Z2/e;I)I

    .line 281
    .line 282
    .line 283
    iget-object v2, p0, Lax/Z2/e$j;->k:Lax/Z2/e;

    .line 284
    .line 285
    invoke-static {v2, v0}, Lax/Z2/e;->n1(Lax/Z2/e;I)I

    .line 286
    .line 287
    .line 288
    iget-object v2, p0, Lax/Z2/e$j;->k:Lax/Z2/e;

    .line 289
    .line 290
    invoke-static {v2, v0}, Lax/Z2/e;->Y0(Lax/Z2/e;I)I

    .line 291
    .line 292
    .line 293
    iget-object v2, p0, Lax/Z2/e$j;->k:Lax/Z2/e;

    .line 294
    .line 295
    invoke-static {v2, v0}, Lax/Z2/e;->S0(Lax/Z2/e;I)I

    .line 296
    .line 297
    .line 298
    iget-object v2, p0, Lax/Z2/e$j;->k:Lax/Z2/e;

    .line 299
    .line 300
    invoke-static {v2, v0}, Lax/Z2/e;->b1(Lax/Z2/e;I)I

    .line 301
    .line 302
    .line 303
    iget-object v2, p0, Lax/Z2/e$j;->k:Lax/Z2/e;

    .line 304
    .line 305
    invoke-static {v2, v0}, Lax/Z2/e;->e1(Lax/Z2/e;I)I

    .line 306
    .line 307
    .line 308
    const/4 v2, 0x1

    .line 309
    :goto_0
    iget-object v3, p0, Lax/Z2/e$j;->k:Lax/Z2/e;

    .line 310
    .line 311
    invoke-static {v3, p1}, Lax/Z2/e;->F1(Lax/Z2/e;Lcom/alphainventor/filemanager/file/n;)V

    .line 312
    .line 313
    .line 314
    invoke-virtual {p1}, Lcom/alphainventor/filemanager/file/n;->E()Ljava/lang/String;

    .line 315
    .line 316
    .line 317
    move-result-object v3

    .line 318
    invoke-static {v3}, Lax/f3/d0;->B(Ljava/lang/String;)Z

    .line 319
    .line 320
    .line 321
    move-result v4
    :try_end_0
    .catch Lax/Z2/e$l; {:try_start_0 .. :try_end_0} :catch_6

    .line 322
    const-string v5, "/"

    .line 323
    .line 324
    if-nez v4, :cond_8

    .line 325
    .line 326
    :try_start_1
    invoke-virtual {v3, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 327
    .line 328
    .line 329
    move-result v4
    :try_end_1
    .catch Lax/Z2/e$l; {:try_start_1 .. :try_end_1} :catch_6

    .line 330
    const-string v5, ",path="

    .line 331
    .line 332
    if-eqz v4, :cond_7

    .line 333
    .line 334
    :try_start_2
    invoke-virtual {p1}, Lcom/alphainventor/filemanager/file/n;->U()Ljava/lang/String;

    .line 335
    .line 336
    .line 337
    move-result-object v4

    .line 338
    invoke-virtual {p1}, Lcom/alphainventor/filemanager/file/n;->B()Ljava/lang/String;

    .line 339
    .line 340
    .line 341
    move-result-object v6

    .line 342
    invoke-static {}, Lax/sb/c;->h()Lax/sb/b;

    .line 343
    .line 344
    .line 345
    move-result-object v7

    .line 346
    const-string v8, "Illegal File Path 1"

    .line 347
    .line 348
    invoke-virtual {v7, v8}, Lax/sb/b;->b(Ljava/lang/String;)Lax/sb/b;

    .line 349
    .line 350
    .line 351
    move-result-object v7

    .line 352
    new-instance v8, Ljava/lang/StringBuilder;

    .line 353
    .line 354
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 355
    .line 356
    .line 357
    iget-object v9, p0, Lax/Z2/e$j;->k:Lax/Z2/e;

    .line 358
    .line 359
    invoke-static {v9}, Lax/Z2/e;->M0(Lax/Z2/e;)Lcom/alphainventor/filemanager/file/o;

    .line 360
    .line 361
    .line 362
    move-result-object v9

    .line 363
    invoke-virtual {v9}, Lcom/alphainventor/filemanager/file/o;->B()Lax/f3/K;

    .line 364
    .line 365
    .line 366
    move-result-object v9

    .line 367
    invoke-virtual {v9}, Lax/f3/K;->toString()Ljava/lang/String;

    .line 368
    .line 369
    .line 370
    move-result-object v9

    .line 371
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 372
    .line 373
    .line 374
    const-string v9, ",parent="

    .line 375
    .line 376
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 377
    .line 378
    .line 379
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 380
    .line 381
    .line 382
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 383
    .line 384
    .line 385
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 386
    .line 387
    .line 388
    const-string v3, ",name="

    .line 389
    .line 390
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 391
    .line 392
    .line 393
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 394
    .line 395
    .line 396
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 397
    .line 398
    .line 399
    move-result-object v3

    .line 400
    invoke-virtual {v7, v3}, Lax/sb/b;->h(Ljava/lang/Object;)Lax/sb/b;

    .line 401
    .line 402
    .line 403
    move-result-object v3

    .line 404
    invoke-virtual {v3}, Lax/sb/b;->i()V

    .line 405
    .line 406
    .line 407
    goto :goto_1

    .line 408
    :cond_7
    invoke-static {}, Lax/sb/c;->h()Lax/sb/b;

    .line 409
    .line 410
    .line 411
    move-result-object v4

    .line 412
    const-string v6, "Illegal File Path 2"

    .line 413
    .line 414
    invoke-virtual {v4, v6}, Lax/sb/b;->b(Ljava/lang/String;)Lax/sb/b;

    .line 415
    .line 416
    .line 417
    move-result-object v4

    .line 418
    new-instance v6, Ljava/lang/StringBuilder;

    .line 419
    .line 420
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 421
    .line 422
    .line 423
    const-string v7, "loc="

    .line 424
    .line 425
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 426
    .line 427
    .line 428
    iget-object v7, p0, Lax/Z2/e$j;->k:Lax/Z2/e;

    .line 429
    .line 430
    invoke-static {v7}, Lax/Z2/e;->M0(Lax/Z2/e;)Lcom/alphainventor/filemanager/file/o;

    .line 431
    .line 432
    .line 433
    move-result-object v7

    .line 434
    invoke-virtual {v7}, Lcom/alphainventor/filemanager/file/o;->B()Lax/f3/K;

    .line 435
    .line 436
    .line 437
    move-result-object v7

    .line 438
    invoke-virtual {v7}, Lax/f3/K;->toString()Ljava/lang/String;

    .line 439
    .line 440
    .line 441
    move-result-object v7

    .line 442
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 443
    .line 444
    .line 445
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 446
    .line 447
    .line 448
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 449
    .line 450
    .line 451
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 452
    .line 453
    .line 454
    move-result-object v3

    .line 455
    invoke-virtual {v4, v3}, Lax/sb/b;->h(Ljava/lang/Object;)Lax/sb/b;

    .line 456
    .line 457
    .line 458
    move-result-object v3

    .line 459
    invoke-virtual {v3}, Lax/sb/b;->i()V

    .line 460
    .line 461
    .line 462
    :goto_1
    const/4 v3, 0x1

    .line 463
    goto :goto_2

    .line 464
    :cond_8
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 465
    .line 466
    .line 467
    move-result v3

    .line 468
    if-eqz v3, :cond_9

    .line 469
    .line 470
    invoke-static {}, Lax/sb/c;->h()Lax/sb/b;

    .line 471
    .line 472
    .line 473
    move-result-object v3

    .line 474
    const-string v4, "!!ROOTSRC"

    .line 475
    .line 476
    invoke-virtual {v3, v4}, Lax/sb/b;->d(Ljava/lang/String;)Lax/sb/b;

    .line 477
    .line 478
    .line 479
    move-result-object v3

    .line 480
    iget-object v4, p0, Lax/Z2/e$j;->k:Lax/Z2/e;

    .line 481
    .line 482
    invoke-static {v4}, Lax/Z2/e;->M0(Lax/Z2/e;)Lcom/alphainventor/filemanager/file/o;

    .line 483
    .line 484
    .line 485
    move-result-object v4

    .line 486
    invoke-virtual {v4}, Lcom/alphainventor/filemanager/file/o;->B()Lax/f3/K;

    .line 487
    .line 488
    .line 489
    move-result-object v4

    .line 490
    invoke-virtual {v4}, Lax/f3/K;->toString()Ljava/lang/String;

    .line 491
    .line 492
    .line 493
    move-result-object v4

    .line 494
    invoke-virtual {v3, v4}, Lax/sb/b;->h(Ljava/lang/Object;)Lax/sb/b;

    .line 495
    .line 496
    .line 497
    move-result-object v3

    .line 498
    invoke-virtual {v3}, Lax/sb/b;->i()V
    :try_end_2
    .catch Lax/Z2/e$l; {:try_start_2 .. :try_end_2} :catch_6

    .line 499
    .line 500
    .line 501
    goto :goto_1

    .line 502
    :cond_9
    const/4 v3, 0x0

    .line 503
    :goto_2
    const/4 v4, 0x0

    .line 504
    if-nez v3, :cond_c

    .line 505
    .line 506
    :try_start_3
    iget-object v5, p0, Lax/Z2/e$j;->k:Lax/Z2/e;

    .line 507
    .line 508
    invoke-virtual {p1}, Lcom/alphainventor/filemanager/file/n;->E()Ljava/lang/String;

    .line 509
    .line 510
    .line 511
    move-result-object v6

    .line 512
    invoke-static {v5, v6}, Lax/Z2/e;->M1(Lax/Z2/e;Ljava/lang/String;)Ljava/lang/String;

    .line 513
    .line 514
    .line 515
    move-result-object v5

    .line 516
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 517
    .line 518
    .line 519
    move-result v6

    .line 520
    if-nez v6, :cond_a

    .line 521
    .line 522
    goto :goto_3

    .line 523
    :cond_a
    iget-object v5, p0, Lax/Z2/e$j;->k:Lax/Z2/e;

    .line 524
    .line 525
    invoke-static {v5}, Lax/Z2/e;->q1(Lax/Z2/e;)Lcom/alphainventor/filemanager/file/n;

    .line 526
    .line 527
    .line 528
    move-result-object v6

    .line 529
    invoke-static {v5, p1, v6}, Lax/Z2/e;->N1(Lax/Z2/e;Lcom/alphainventor/filemanager/file/n;Lcom/alphainventor/filemanager/file/n;)Ljava/lang/String;

    .line 530
    .line 531
    .line 532
    move-result-object v5
    :try_end_3
    .catch Lax/e3/j; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Lax/Z2/e$l; {:try_start_3 .. :try_end_3} :catch_6

    .line 533
    :goto_3
    :try_start_4
    iget-object v6, p0, Lax/Z2/e$j;->k:Lax/Z2/e;

    .line 534
    .line 535
    invoke-static {v6}, Lax/Z2/e;->D0(Lax/Z2/e;)Lcom/alphainventor/filemanager/file/o;

    .line 536
    .line 537
    .line 538
    move-result-object v6

    .line 539
    invoke-virtual {v6, v5}, Lcom/alphainventor/filemanager/file/o;->a1(Ljava/lang/String;)Lcom/alphainventor/filemanager/file/n;

    .line 540
    .line 541
    .line 542
    move-result-object v6
    :try_end_4
    .catch Lax/e3/j; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Lax/Z2/e$l; {:try_start_4 .. :try_end_4} :catch_6

    .line 543
    :try_start_5
    iget-object v7, p0, Lax/Z2/e$j;->k:Lax/Z2/e;

    .line 544
    .line 545
    invoke-static {v7, v6}, Lax/Z2/e;->s1(Lax/Z2/e;Lcom/alphainventor/filemanager/file/n;)V

    .line 546
    .line 547
    .line 548
    if-eqz v2, :cond_b

    .line 549
    .line 550
    iget-object v2, p0, Lax/Z2/e$j;->k:Lax/Z2/e;

    .line 551
    .line 552
    invoke-static {v2, v6}, Lax/Z2/e;->O1(Lax/Z2/e;Lcom/alphainventor/filemanager/file/n;)V
    :try_end_5
    .catch Lax/e3/j; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Lax/Z2/e$l; {:try_start_5 .. :try_end_5} :catch_6

    .line 553
    .line 554
    .line 555
    goto :goto_4

    .line 556
    :catch_0
    move-exception v2

    .line 557
    goto :goto_5

    .line 558
    :catch_1
    move-exception v2

    .line 559
    goto :goto_7

    .line 560
    :cond_b
    :goto_4
    move-object v2, v4

    .line 561
    move-object v4, v6

    .line 562
    move-object v6, v5

    .line 563
    move-object v5, v2

    .line 564
    goto :goto_8

    .line 565
    :catch_2
    move-exception v2

    .line 566
    move-object v6, v4

    .line 567
    goto :goto_5

    .line 568
    :catch_3
    move-exception v2

    .line 569
    move-object v6, v4

    .line 570
    goto :goto_7

    .line 571
    :catch_4
    move-exception v2

    .line 572
    move-object v5, v4

    .line 573
    move-object v6, v5

    .line 574
    goto :goto_5

    .line 575
    :catch_5
    move-exception v2

    .line 576
    move-object v5, v4

    .line 577
    move-object v6, v5

    .line 578
    goto :goto_7

    .line 579
    :goto_5
    :try_start_6
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 580
    .line 581
    .line 582
    move-object v10, v5

    .line 583
    move-object v5, v2

    .line 584
    move-object v2, v4

    .line 585
    :goto_6
    move-object v4, v6

    .line 586
    move-object v6, v10

    .line 587
    goto :goto_8

    .line 588
    :goto_7
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 589
    .line 590
    .line 591
    move-object v10, v5

    .line 592
    move-object v5, v4

    .line 593
    goto :goto_6

    .line 594
    :cond_c
    move-object v2, v4

    .line 595
    move-object v5, v2

    .line 596
    move-object v6, v5

    .line 597
    :goto_8
    if-nez v4, :cond_13

    .line 598
    .line 599
    if-eqz v2, :cond_d

    .line 600
    .line 601
    iget-object v4, p0, Lax/Z2/e$j;->k:Lax/Z2/e;

    .line 602
    .line 603
    invoke-virtual {v4, v2}, Lax/Z2/j;->o0(Lax/e3/j;)I

    .line 604
    .line 605
    .line 606
    :cond_d
    if-eqz v3, :cond_e

    .line 607
    .line 608
    iget-object v2, p0, Lax/Z2/e$j;->k:Lax/Z2/e;

    .line 609
    .line 610
    const/16 v3, 0x28

    .line 611
    .line 612
    invoke-virtual {v2, v3}, Lax/Z2/j;->p0(I)V

    .line 613
    .line 614
    .line 615
    goto/16 :goto_9

    .line 616
    .line 617
    :cond_e
    if-eqz v2, :cond_f

    .line 618
    .line 619
    goto/16 :goto_9

    .line 620
    .line 621
    :cond_f
    if-eqz v5, :cond_10

    .line 622
    .line 623
    invoke-static {}, Lax/sb/c;->h()Lax/sb/b;

    .line 624
    .line 625
    .line 626
    move-result-object v2

    .line 627
    invoke-virtual {v2}, Lax/sb/b;->g()Lax/sb/b;

    .line 628
    .line 629
    .line 630
    move-result-object v2

    .line 631
    const-string v3, "CLIPBOARD TARGET PATH"

    .line 632
    .line 633
    invoke-virtual {v2, v3}, Lax/sb/b;->d(Ljava/lang/String;)Lax/sb/b;

    .line 634
    .line 635
    .line 636
    move-result-object v2

    .line 637
    new-instance v3, Ljava/lang/StringBuilder;

    .line 638
    .line 639
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 640
    .line 641
    .line 642
    const-string v4, "source"

    .line 643
    .line 644
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 645
    .line 646
    .line 647
    iget-object v4, p0, Lax/Z2/e$j;->k:Lax/Z2/e;

    .line 648
    .line 649
    invoke-static {v4}, Lax/Z2/e;->M0(Lax/Z2/e;)Lcom/alphainventor/filemanager/file/o;

    .line 650
    .line 651
    .line 652
    move-result-object v4

    .line 653
    invoke-virtual {v4}, Lcom/alphainventor/filemanager/file/o;->B()Lax/f3/K;

    .line 654
    .line 655
    .line 656
    move-result-object v4

    .line 657
    invoke-virtual {v4}, Lax/f3/K;->toString()Ljava/lang/String;

    .line 658
    .line 659
    .line 660
    move-result-object v4

    .line 661
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 662
    .line 663
    .line 664
    const-string v4, ",target:"

    .line 665
    .line 666
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 667
    .line 668
    .line 669
    iget-object v4, p0, Lax/Z2/e$j;->k:Lax/Z2/e;

    .line 670
    .line 671
    invoke-static {v4}, Lax/Z2/e;->D0(Lax/Z2/e;)Lcom/alphainventor/filemanager/file/o;

    .line 672
    .line 673
    .line 674
    move-result-object v4

    .line 675
    invoke-virtual {v4}, Lcom/alphainventor/filemanager/file/o;->B()Lax/f3/K;

    .line 676
    .line 677
    .line 678
    move-result-object v4

    .line 679
    invoke-virtual {v4}, Lax/f3/K;->toString()Ljava/lang/String;

    .line 680
    .line 681
    .line 682
    move-result-object v4

    .line 683
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 684
    .line 685
    .line 686
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 687
    .line 688
    .line 689
    move-result-object v3

    .line 690
    invoke-virtual {v2, v3}, Lax/sb/b;->h(Ljava/lang/Object;)Lax/sb/b;

    .line 691
    .line 692
    .line 693
    move-result-object v2

    .line 694
    invoke-virtual {v2, v5}, Lax/sb/b;->m(Ljava/lang/Throwable;)Lax/sb/b;

    .line 695
    .line 696
    .line 697
    move-result-object v2

    .line 698
    invoke-virtual {v2}, Lax/sb/b;->i()V

    .line 699
    .line 700
    .line 701
    goto :goto_9

    .line 702
    :cond_10
    invoke-static {}, Lax/sb/c;->h()Lax/sb/b;

    .line 703
    .line 704
    .line 705
    move-result-object v2

    .line 706
    invoke-virtual {v2}, Lax/sb/b;->g()Lax/sb/b;

    .line 707
    .line 708
    .line 709
    move-result-object v2

    .line 710
    const-string v3, "CTNUL2"

    .line 711
    .line 712
    invoke-virtual {v2, v3}, Lax/sb/b;->d(Ljava/lang/String;)Lax/sb/b;

    .line 713
    .line 714
    .line 715
    move-result-object v2

    .line 716
    new-instance v3, Ljava/lang/StringBuilder;

    .line 717
    .line 718
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 719
    .line 720
    .line 721
    iget-object v4, p0, Lax/Z2/e$j;->k:Lax/Z2/e;

    .line 722
    .line 723
    invoke-static {v4}, Lax/Z2/e;->D0(Lax/Z2/e;)Lcom/alphainventor/filemanager/file/o;

    .line 724
    .line 725
    .line 726
    move-result-object v4

    .line 727
    invoke-virtual {v4}, Lcom/alphainventor/filemanager/file/o;->B()Lax/f3/K;

    .line 728
    .line 729
    .line 730
    move-result-object v4

    .line 731
    invoke-virtual {v4}, Lax/f3/K;->toString()Ljava/lang/String;

    .line 732
    .line 733
    .line 734
    move-result-object v4

    .line 735
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 736
    .line 737
    .line 738
    const-string v4, ":"

    .line 739
    .line 740
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 741
    .line 742
    .line 743
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 744
    .line 745
    .line 746
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 747
    .line 748
    .line 749
    move-result-object v3

    .line 750
    invoke-virtual {v2, v3}, Lax/sb/b;->h(Ljava/lang/Object;)Lax/sb/b;

    .line 751
    .line 752
    .line 753
    move-result-object v2

    .line 754
    invoke-virtual {v2}, Lax/sb/b;->i()V

    .line 755
    .line 756
    .line 757
    :goto_9
    invoke-interface {p1}, Lax/f3/b;->isDirectory()Z

    .line 758
    .line 759
    .line 760
    move-result v2

    .line 761
    if-eqz v2, :cond_11

    .line 762
    .line 763
    iget-object v2, p0, Lax/Z2/e$j;->k:Lax/Z2/e;

    .line 764
    .line 765
    invoke-virtual {p1}, Lcom/alphainventor/filemanager/file/n;->R()Ljava/lang/String;

    .line 766
    .line 767
    .line 768
    move-result-object v3

    .line 769
    invoke-static {v2, v3}, Lax/Z2/e;->V0(Lax/Z2/e;Ljava/lang/String;)I

    .line 770
    .line 771
    .line 772
    move-result v2

    .line 773
    goto :goto_a

    .line 774
    :cond_11
    const/4 v2, 0x1

    .line 775
    :goto_a
    if-nez v2, :cond_12

    .line 776
    .line 777
    iget-object v3, p0, Lax/Z2/e$j;->k:Lax/Z2/e;

    .line 778
    .line 779
    invoke-static {v3, v1}, Lax/Z2/e;->W0(Lax/Z2/e;Z)Z

    .line 780
    .line 781
    .line 782
    :cond_12
    iget-object v1, p0, Lax/Z2/e$j;->k:Lax/Z2/e;

    .line 783
    .line 784
    invoke-virtual {p1}, Lcom/alphainventor/filemanager/file/n;->B()Ljava/lang/String;

    .line 785
    .line 786
    .line 787
    move-result-object v3

    .line 788
    invoke-static {v1, p1, v3, v2}, Lax/Z2/e;->w0(Lax/Z2/e;Lcom/alphainventor/filemanager/file/n;Ljava/lang/String;I)V

    .line 789
    .line 790
    .line 791
    goto/16 :goto_d

    .line 792
    .line 793
    :cond_13
    iget-object v2, p0, Lax/Z2/e$j;->k:Lax/Z2/e;

    .line 794
    .line 795
    invoke-virtual {v2, v1}, Lax/Z2/j;->j0(Z)V

    .line 796
    .line 797
    .line 798
    iget-object v2, p0, Lax/Z2/e$j;->k:Lax/Z2/e;

    .line 799
    .line 800
    invoke-static {v2}, Lax/Z2/e;->q1(Lax/Z2/e;)Lcom/alphainventor/filemanager/file/n;

    .line 801
    .line 802
    .line 803
    move-result-object v2

    .line 804
    invoke-static {p1, v2}, Lax/f3/B;->O(Lcom/alphainventor/filemanager/file/n;Lcom/alphainventor/filemanager/file/n;)Z

    .line 805
    .line 806
    .line 807
    move-result v2

    .line 808
    if-eqz v2, :cond_19

    .line 809
    .line 810
    invoke-virtual {p1}, Lcom/alphainventor/filemanager/file/n;->E()Ljava/lang/String;

    .line 811
    .line 812
    .line 813
    move-result-object v2

    .line 814
    iget-object v3, p0, Lax/Z2/e$j;->k:Lax/Z2/e;

    .line 815
    .line 816
    invoke-static {v3}, Lax/Z2/e;->q1(Lax/Z2/e;)Lcom/alphainventor/filemanager/file/n;

    .line 817
    .line 818
    .line 819
    move-result-object v3

    .line 820
    invoke-virtual {v3}, Lcom/alphainventor/filemanager/file/n;->E()Ljava/lang/String;

    .line 821
    .line 822
    .line 823
    move-result-object v3

    .line 824
    invoke-virtual {p1}, Lcom/alphainventor/filemanager/file/n;->U()Ljava/lang/String;

    .line 825
    .line 826
    .line 827
    move-result-object v5

    .line 828
    invoke-virtual {p1}, Lcom/alphainventor/filemanager/file/n;->Q()Lax/U2/f;

    .line 829
    .line 830
    .line 831
    move-result-object v6

    .line 832
    sget-object v7, Lax/U2/f;->y0:Lax/U2/f;

    .line 833
    .line 834
    if-eq v6, v7, :cond_15

    .line 835
    .line 836
    iget-object v6, p0, Lax/Z2/e$j;->k:Lax/Z2/e;

    .line 837
    .line 838
    invoke-static {v6}, Lax/Z2/e;->q1(Lax/Z2/e;)Lcom/alphainventor/filemanager/file/n;

    .line 839
    .line 840
    .line 841
    move-result-object v6

    .line 842
    invoke-virtual {v6}, Lcom/alphainventor/filemanager/file/n;->Q()Lax/U2/f;

    .line 843
    .line 844
    .line 845
    move-result-object v6

    .line 846
    if-ne v6, v7, :cond_14

    .line 847
    .line 848
    goto :goto_b

    .line 849
    :cond_14
    const/4 v6, 0x0

    .line 850
    goto :goto_c

    .line 851
    :cond_15
    :goto_b
    invoke-direct {p0, v2}, Lax/Z2/e$j;->I(Ljava/lang/String;)Ljava/lang/String;

    .line 852
    .line 853
    .line 854
    move-result-object v2

    .line 855
    invoke-direct {p0, v3}, Lax/Z2/e$j;->I(Ljava/lang/String;)Ljava/lang/String;

    .line 856
    .line 857
    .line 858
    move-result-object v3

    .line 859
    invoke-direct {p0, v5}, Lax/Z2/e$j;->I(Ljava/lang/String;)Ljava/lang/String;

    .line 860
    .line 861
    .line 862
    move-result-object v5

    .line 863
    const/4 v6, 0x1

    .line 864
    :goto_c
    invoke-interface {p1}, Lax/f3/b;->isDirectory()Z

    .line 865
    .line 866
    .line 867
    move-result v7

    .line 868
    invoke-virtual {p0, v7, v2, v3}, Lax/Z2/e$j;->L(ZLjava/lang/String;Ljava/lang/String;)Z

    .line 869
    .line 870
    .line 871
    move-result v2

    .line 872
    if-eqz v2, :cond_16

    .line 873
    .line 874
    const/4 p1, 0x3

    .line 875
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 876
    .line 877
    .line 878
    move-result-object p1

    .line 879
    return-object p1

    .line 880
    :cond_16
    invoke-static {v5, v3}, Lax/f3/d0;->G(Ljava/lang/String;Ljava/lang/String;)Z

    .line 881
    .line 882
    .line 883
    move-result v2

    .line 884
    if-eqz v2, :cond_19

    .line 885
    .line 886
    iget-object v1, p0, Lax/Z2/e$j;->k:Lax/Z2/e;

    .line 887
    .line 888
    invoke-static {v1}, Lax/Z2/e;->I0(Lax/Z2/e;)Z

    .line 889
    .line 890
    .line 891
    move-result v1

    .line 892
    const/4 v2, 0x4

    .line 893
    if-eqz v1, :cond_17

    .line 894
    .line 895
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 896
    .line 897
    .line 898
    move-result-object p1

    .line 899
    return-object p1

    .line 900
    :cond_17
    if-eqz v6, :cond_18

    .line 901
    .line 902
    invoke-virtual {p1}, Lcom/alphainventor/filemanager/file/n;->U()Ljava/lang/String;

    .line 903
    .line 904
    .line 905
    move-result-object v1

    .line 906
    iget-object v3, p0, Lax/Z2/e$j;->k:Lax/Z2/e;

    .line 907
    .line 908
    invoke-static {v3}, Lax/Z2/e;->q1(Lax/Z2/e;)Lcom/alphainventor/filemanager/file/n;

    .line 909
    .line 910
    .line 911
    move-result-object v3

    .line 912
    invoke-virtual {v3}, Lcom/alphainventor/filemanager/file/n;->E()Ljava/lang/String;

    .line 913
    .line 914
    .line 915
    move-result-object v3

    .line 916
    invoke-static {v1, v3}, Lax/f3/d0;->G(Ljava/lang/String;Ljava/lang/String;)Z

    .line 917
    .line 918
    .line 919
    move-result v1

    .line 920
    if-nez v1, :cond_18

    .line 921
    .line 922
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 923
    .line 924
    .line 925
    move-result-object p1

    .line 926
    return-object p1

    .line 927
    :cond_18
    sget-object v1, Lax/Z2/j$f;->Y:Lax/Z2/j$f;

    .line 928
    .line 929
    invoke-direct {p0, p1, v4, v1}, Lax/Z2/e$j;->Q(Lcom/alphainventor/filemanager/file/n;Lcom/alphainventor/filemanager/file/n;Lax/Z2/j$f;)V

    .line 930
    .line 931
    .line 932
    goto :goto_d

    .line 933
    :cond_19
    invoke-interface {v4}, Lax/f3/b;->o()Z

    .line 934
    .line 935
    .line 936
    move-result v2

    .line 937
    if-eqz v2, :cond_1d

    .line 938
    .line 939
    invoke-interface {p1}, Lax/f3/b;->isDirectory()Z

    .line 940
    .line 941
    .line 942
    move-result v2

    .line 943
    invoke-interface {v4}, Lax/f3/b;->isDirectory()Z

    .line 944
    .line 945
    .line 946
    move-result v3

    .line 947
    if-eq v2, v3, :cond_1a

    .line 948
    .line 949
    const/4 p1, 0x2

    .line 950
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 951
    .line 952
    .line 953
    move-result-object p1

    .line 954
    return-object p1

    .line 955
    :cond_1a
    invoke-interface {p1}, Lax/f3/b;->isDirectory()Z

    .line 956
    .line 957
    .line 958
    move-result v2

    .line 959
    if-eqz v2, :cond_1b

    .line 960
    .line 961
    iget-object v2, p0, Lax/Z2/e$j;->k:Lax/Z2/e;

    .line 962
    .line 963
    invoke-static {v2}, Lax/Z2/e;->L0(Lax/Z2/e;)Z

    .line 964
    .line 965
    .line 966
    move-result v2

    .line 967
    if-eqz v2, :cond_1b

    .line 968
    .line 969
    iget-object v1, p0, Lax/Z2/e$j;->k:Lax/Z2/e;

    .line 970
    .line 971
    invoke-static {v1}, Lax/Z2/e;->g1(Lax/Z2/e;)Lax/Z2/j$f;

    .line 972
    .line 973
    .line 974
    move-result-object v1

    .line 975
    invoke-direct {p0, p1, v4, v1}, Lax/Z2/e$j;->Q(Lcom/alphainventor/filemanager/file/n;Lcom/alphainventor/filemanager/file/n;Lax/Z2/j$f;)V

    .line 976
    .line 977
    .line 978
    goto :goto_d

    .line 979
    :cond_1b
    invoke-interface {p1}, Lax/f3/b;->isDirectory()Z

    .line 980
    .line 981
    .line 982
    move-result v2

    .line 983
    if-nez v2, :cond_1c

    .line 984
    .line 985
    iget-object v2, p0, Lax/Z2/e$j;->k:Lax/Z2/e;

    .line 986
    .line 987
    invoke-static {v2}, Lax/Z2/e;->u1(Lax/Z2/e;)Z

    .line 988
    .line 989
    .line 990
    move-result v2

    .line 991
    if-eqz v2, :cond_1c

    .line 992
    .line 993
    iget-object v1, p0, Lax/Z2/e$j;->k:Lax/Z2/e;

    .line 994
    .line 995
    invoke-static {v1}, Lax/Z2/e;->J1(Lax/Z2/e;)Lax/Z2/j$f;

    .line 996
    .line 997
    .line 998
    move-result-object v1

    .line 999
    invoke-direct {p0, p1, v4, v1}, Lax/Z2/e$j;->Q(Lcom/alphainventor/filemanager/file/n;Lcom/alphainventor/filemanager/file/n;Lax/Z2/j$f;)V

    .line 1000
    .line 1001
    .line 1002
    goto :goto_d

    .line 1003
    :cond_1c
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1004
    .line 1005
    .line 1006
    move-result-object p1

    .line 1007
    return-object p1

    .line 1008
    :cond_1d
    sget-object v1, Lax/Z2/j$f;->q:Lax/Z2/j$f;

    .line 1009
    .line 1010
    invoke-direct {p0, p1, v4, v1}, Lax/Z2/e$j;->Q(Lcom/alphainventor/filemanager/file/n;Lcom/alphainventor/filemanager/file/n;Lax/Z2/j$f;)V

    .line 1011
    .line 1012
    .line 1013
    :goto_d
    iget-object p1, p0, Lax/Z2/e$j;->k:Lax/Z2/e;

    .line 1014
    .line 1015
    invoke-static {p1}, Lax/Z2/e;->G1(Lax/Z2/e;)Ljava/util/LinkedList;

    .line 1016
    .line 1017
    .line 1018
    move-result-object p1

    .line 1019
    invoke-virtual {p1}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 1020
    .line 1021
    .line 1022
    move-result p1

    .line 1023
    if-eqz p1, :cond_0

    .line 1024
    .line 1025
    iget-object p1, p0, Lax/Z2/e$j;->k:Lax/Z2/e;

    .line 1026
    .line 1027
    invoke-static {p1}, Lax/Z2/e;->z0(Lax/Z2/e;)Ljava/util/LinkedList;

    .line 1028
    .line 1029
    .line 1030
    move-result-object p1

    .line 1031
    invoke-virtual {p1}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 1032
    .line 1033
    .line 1034
    move-result p1

    .line 1035
    if-eqz p1, :cond_0

    .line 1036
    .line 1037
    :goto_e
    iget-object p1, p0, Lax/Z2/e$j;->k:Lax/Z2/e;

    .line 1038
    .line 1039
    invoke-static {p1}, Lax/Z2/e;->D0(Lax/Z2/e;)Lcom/alphainventor/filemanager/file/o;

    .line 1040
    .line 1041
    .line 1042
    move-result-object p1

    .line 1043
    invoke-virtual {p1}, Lcom/alphainventor/filemanager/file/o;->Z()Z

    .line 1044
    .line 1045
    .line 1046
    move-result p1

    .line 1047
    if-eqz p1, :cond_1f

    .line 1048
    .line 1049
    iget-object p1, p0, Lax/Z2/e$j;->k:Lax/Z2/e;

    .line 1050
    .line 1051
    invoke-static {p1}, Lax/Z2/e;->E0(Lax/Z2/e;)Ljava/util/List;

    .line 1052
    .line 1053
    .line 1054
    move-result-object p1

    .line 1055
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 1056
    .line 1057
    .line 1058
    move-result-object p1

    .line 1059
    :cond_1e
    :goto_f
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 1060
    .line 1061
    .line 1062
    move-result v1

    .line 1063
    if-eqz v1, :cond_1f

    .line 1064
    .line 1065
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1066
    .line 1067
    .line 1068
    move-result-object v1

    .line 1069
    check-cast v1, Ljava/util/Map$Entry;

    .line 1070
    .line 1071
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 1072
    .line 1073
    .line 1074
    move-result-object v2

    .line 1075
    check-cast v2, Lcom/alphainventor/filemanager/file/n;

    .line 1076
    .line 1077
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 1078
    .line 1079
    .line 1080
    move-result-object v1

    .line 1081
    check-cast v1, Lax/Z2/e$g;

    .line 1082
    .line 1083
    iget-object v3, p0, Lax/Z2/e$j;->k:Lax/Z2/e;

    .line 1084
    .line 1085
    invoke-static {v3}, Lax/Z2/e;->D0(Lax/Z2/e;)Lcom/alphainventor/filemanager/file/o;

    .line 1086
    .line 1087
    .line 1088
    move-result-object v3

    .line 1089
    invoke-virtual {v3}, Lcom/alphainventor/filemanager/file/o;->u()Lcom/alphainventor/filemanager/file/m;

    .line 1090
    .line 1091
    .line 1092
    move-result-object v3

    .line 1093
    check-cast v3, Lax/f3/i0;

    .line 1094
    .line 1095
    iget-wide v4, v1, Lax/Z2/e$g;->a:J

    .line 1096
    .line 1097
    invoke-interface {v3, v2, v4, v5}, Lax/f3/i0;->d(Lcom/alphainventor/filemanager/file/n;J)Z

    .line 1098
    .line 1099
    .line 1100
    iget-object v3, v1, Lax/Z2/e$g;->b:Lcom/alphainventor/filemanager/file/p;

    .line 1101
    .line 1102
    if-eqz v3, :cond_1e

    .line 1103
    .line 1104
    invoke-virtual {v2}, Lcom/alphainventor/filemanager/file/n;->S()Lax/f3/K;

    .line 1105
    .line 1106
    .line 1107
    move-result-object v3

    .line 1108
    sget-object v4, Lax/f3/K;->h:Lax/f3/K;

    .line 1109
    .line 1110
    if-ne v3, v4, :cond_1e

    .line 1111
    .line 1112
    invoke-static {}, Lax/c3/j;->F()Lax/c3/j;

    .line 1113
    .line 1114
    .line 1115
    move-result-object v3

    .line 1116
    invoke-virtual {v3}, Lax/c3/j;->q()Z

    .line 1117
    .line 1118
    .line 1119
    move-result v3

    .line 1120
    if-eqz v3, :cond_1e

    .line 1121
    .line 1122
    invoke-static {}, Lcom/alphainventor/filemanager/file/z;->Y()Lcom/alphainventor/filemanager/file/z;

    .line 1123
    .line 1124
    .line 1125
    move-result-object v3

    .line 1126
    invoke-virtual {v2}, Lcom/alphainventor/filemanager/file/n;->E()Ljava/lang/String;

    .line 1127
    .line 1128
    .line 1129
    move-result-object v2

    .line 1130
    iget-object v1, v1, Lax/Z2/e$g;->b:Lcom/alphainventor/filemanager/file/p;

    .line 1131
    .line 1132
    invoke-virtual {v3, v2, v1}, Lcom/alphainventor/filemanager/file/z;->V(Ljava/lang/String;Lcom/alphainventor/filemanager/file/p;)V

    .line 1133
    .line 1134
    .line 1135
    goto :goto_f

    .line 1136
    :cond_1f
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1137
    .line 1138
    .line 1139
    move-result-object p1
    :try_end_6
    .catch Lax/Z2/e$l; {:try_start_6 .. :try_end_6} :catch_6

    .line 1140
    return-object p1

    .line 1141
    :catch_6
    const/16 p1, 0xb

    .line 1142
    .line 1143
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1144
    .line 1145
    .line 1146
    move-result-object p1

    .line 1147
    return-object p1
    .line 1148
    .line 1149
    .line 1150
    .line 1151
    .line 1152
    .line 1153
    .line 1154
    .line 1155
    .line 1156
    .line 1157
    .line 1158
    .line 1159
    .line 1160
    .line 1161
    .line 1162
    .line 1163
    .line 1164
    .line 1165
    .line 1166
    .line 1167
    .line 1168
    .line 1169
    .line 1170
    .line 1171
    .line 1172
    .line 1173
    .line 1174
    .line 1175
    .line 1176
    .line 1177
    .line 1178
    .line 1179
    .line 1180
    .line 1181
    .line 1182
    .line 1183
    .line 1184
    .line 1185
    .line 1186
    .line 1187
    .line 1188
    .line 1189
    .line 1190
    .line 1191
    .line 1192
    .line 1193
    .line 1194
    .line 1195
    .line 1196
    .line 1197
    .line 1198
    .line 1199
    .line 1200
    .line 1201
    .line 1202
    .line 1203
    .line 1204
    .line 1205
    .line 1206
    .line 1207
    .line 1208
    .line 1209
    .line 1210
    .line 1211
    .line 1212
    .line 1213
    .line 1214
    .line 1215
    .line 1216
    .line 1217
    .line 1218
    .line 1219
    .line 1220
    .line 1221
    .line 1222
    .line 1223
    .line 1224
    .line 1225
    .line 1226
    .line 1227
    .line 1228
    .line 1229
    .line 1230
    .line 1231
    .line 1232
    .line 1233
    .line 1234
    .line 1235
    .line 1236
    .line 1237
    .line 1238
    .line 1239
    .line 1240
    .line 1241
    .line 1242
    .line 1243
    .line 1244
    .line 1245
    .line 1246
    .line 1247
    .line 1248
    .line 1249
    .line 1250
    .line 1251
    .line 1252
    .line 1253
    .line 1254
    .line 1255
    .line 1256
    .line 1257
    .line 1258
    .line 1259
    .line 1260
    .line 1261
    .line 1262
    .line 1263
    .line 1264
    .line 1265
    .line 1266
    .line 1267
    .line 1268
    .line 1269
    .line 1270
    .line 1271
    .line 1272
    .line 1273
    .line 1274
    .line 1275
    .line 1276
    .line 1277
    .line 1278
    .line 1279
    .line 1280
    .line 1281
    .line 1282
    .line 1283
    .line 1284
    .line 1285
    .line 1286
    .line 1287
    .line 1288
    .line 1289
    .line 1290
    .line 1291
    .line 1292
    .line 1293
    .line 1294
    .line 1295
    .line 1296
    .line 1297
    .line 1298
    .line 1299
    .line 1300
    .line 1301
    .line 1302
    .line 1303
    .line 1304
    .line 1305
    .line 1306
    .line 1307
    .line 1308
    .line 1309
    .line 1310
    .line 1311
    .line 1312
    .line 1313
    .line 1314
    .line 1315
    .line 1316
    .line 1317
    .line 1318
    .line 1319
    .line 1320
    .line 1321
    .line 1322
    .line 1323
    .line 1324
    .line 1325
    .line 1326
    .line 1327
    .line 1328
    .line 1329
    .line 1330
    .line 1331
    .line 1332
    .line 1333
    .line 1334
    .line 1335
    .line 1336
    .line 1337
    .line 1338
    .line 1339
    .line 1340
    .line 1341
    .line 1342
    .line 1343
    .line 1344
    .line 1345
    .line 1346
    .line 1347
    .line 1348
    .line 1349
    .line 1350
    .line 1351
    .line 1352
    .line 1353
    .line 1354
    .line 1355
    .line 1356
    .line 1357
    .line 1358
    .line 1359
    .line 1360
    .line 1361
    .line 1362
    .line 1363
    .line 1364
    .line 1365
    .line 1366
    .line 1367
    .line 1368
    .line 1369
    .line 1370
    .line 1371
    .line 1372
    .line 1373
    .line 1374
    .line 1375
    .line 1376
    .line 1377
    .line 1378
    .line 1379
    .line 1380
    .line 1381
    .line 1382
    .line 1383
    .line 1384
    .line 1385
    .line 1386
    .line 1387
    .line 1388
    .line 1389
    .line 1390
    .line 1391
    .line 1392
    .line 1393
    .line 1394
    .line 1395
    .line 1396
    .line 1397
    .line 1398
    .line 1399
    .line 1400
    .line 1401
    .line 1402
    .line 1403
    .line 1404
    .line 1405
    .line 1406
    .line 1407
    .line 1408
    .line 1409
    .line 1410
    .line 1411
    .line 1412
    .line 1413
    .line 1414
    .line 1415
    .line 1416
    .line 1417
    .line 1418
    .line 1419
    .line 1420
    .line 1421
    .line 1422
    .line 1423
    .line 1424
    .line 1425
    .line 1426
    .line 1427
    .line 1428
    .line 1429
    .line 1430
    .line 1431
    .line 1432
    .line 1433
    .line 1434
    .line 1435
    .line 1436
    .line 1437
    .line 1438
    .line 1439
    .line 1440
    .line 1441
    .line 1442
    .line 1443
    .line 1444
    .line 1445
    .line 1446
    .line 1447
    .line 1448
    .line 1449
    .line 1450
    .line 1451
    .line 1452
    .line 1453
    .line 1454
    .line 1455
    .line 1456
    .line 1457
    .line 1458
    .line 1459
    .line 1460
    .line 1461
    .line 1462
    .line 1463
    .line 1464
    .line 1465
    .line 1466
    .line 1467
    .line 1468
    .line 1469
    .line 1470
    .line 1471
    .line 1472
    .line 1473
    .line 1474
    .line 1475
    .line 1476
    .line 1477
    .line 1478
    .line 1479
    .line 1480
    .line 1481
    .line 1482
    .line 1483
    .line 1484
    .line 1485
    .line 1486
    .line 1487
    .line 1488
    .line 1489
    .line 1490
    .line 1491
    .line 1492
    .line 1493
    .line 1494
    .line 1495
    .line 1496
    .line 1497
    .line 1498
    .line 1499
    .line 1500
    .line 1501
    .line 1502
    .line 1503
    .line 1504
    .line 1505
    .line 1506
    .line 1507
    .line 1508
    .line 1509
    .line 1510
    .line 1511
    .line 1512
    .line 1513
    .line 1514
    .line 1515
    .line 1516
    .line 1517
    .line 1518
    .line 1519
    .line 1520
    .line 1521
    .line 1522
    .line 1523
    .line 1524
    .line 1525
    .line 1526
    .line 1527
    .line 1528
    .line 1529
    .line 1530
    .line 1531
    .line 1532
    .line 1533
    .line 1534
    .line 1535
    .line 1536
    .line 1537
    .line 1538
    .line 1539
    .line 1540
    .line 1541
    .line 1542
    .line 1543
    .line 1544
    .line 1545
    .line 1546
    .line 1547
    .line 1548
    .line 1549
    .line 1550
    .line 1551
    .line 1552
    .line 1553
    .line 1554
    .line 1555
    .line 1556
    .line 1557
    .line 1558
    .line 1559
    .line 1560
    .line 1561
    .line 1562
    .line 1563
    .line 1564
    .line 1565
    .line 1566
    .line 1567
    .line 1568
    .line 1569
    .line 1570
    .line 1571
    .line 1572
    .line 1573
    .line 1574
    .line 1575
    .line 1576
    .line 1577
    .line 1578
    .line 1579
    .line 1580
    .line 1581
    .line 1582
    .line 1583
    .line 1584
    .line 1585
    .line 1586
    .line 1587
    .line 1588
    .line 1589
    .line 1590
    .line 1591
    .line 1592
    .line 1593
    .line 1594
    .line 1595
    .line 1596
    .line 1597
    .line 1598
    .line 1599
    .line 1600
    .line 1601
    .line 1602
    .line 1603
    .line 1604
    .line 1605
    .line 1606
    .line 1607
    .line 1608
    .line 1609
    .line 1610
    .line 1611
    .line 1612
    .line 1613
    .line 1614
    .line 1615
    .line 1616
    .line 1617
    .line 1618
    .line 1619
    .line 1620
    .line 1621
    .line 1622
    .line 1623
    .line 1624
    .line 1625
    .line 1626
    .line 1627
    .line 1628
    .line 1629
    .line 1630
    .line 1631
    .line 1632
    .line 1633
    .line 1634
    .line 1635
    .line 1636
    .line 1637
    .line 1638
    .line 1639
    .line 1640
    .line 1641
    .line 1642
    .line 1643
    .line 1644
    .line 1645
    .line 1646
    .line 1647
    .line 1648
    .line 1649
    .line 1650
    .line 1651
    .line 1652
    .line 1653
    .line 1654
    .line 1655
    .line 1656
    .line 1657
    .line 1658
    .line 1659
    .line 1660
    .line 1661
    .line 1662
    .line 1663
    .line 1664
    .line 1665
    .line 1666
    .line 1667
    .line 1668
    .line 1669
    .line 1670
    .line 1671
    .line 1672
    .line 1673
    .line 1674
    .line 1675
    .line 1676
    .line 1677
    .line 1678
    .line 1679
    .line 1680
    .line 1681
    .line 1682
    .line 1683
    .line 1684
    .line 1685
    .line 1686
    .line 1687
    .line 1688
    .line 1689
    .line 1690
    .line 1691
    .line 1692
    .line 1693
    .line 1694
    .line 1695
    .line 1696
    .line 1697
    .line 1698
    .line 1699
    .line 1700
    .line 1701
    .line 1702
    .line 1703
    .line 1704
    .line 1705
    .line 1706
    .line 1707
    .line 1708
    .line 1709
    .line 1710
    .line 1711
    .line 1712
    .line 1713
    .line 1714
    .line 1715
    .line 1716
    .line 1717
    .line 1718
    .line 1719
    .line 1720
    .line 1721
    .line 1722
    .line 1723
    .line 1724
    .line 1725
    .line 1726
    .line 1727
    .line 1728
    .line 1729
    .line 1730
    .line 1731
    .line 1732
    .line 1733
    .line 1734
    .line 1735
    .line 1736
    .line 1737
    .line 1738
    .line 1739
    .line 1740
    .line 1741
    .line 1742
    .line 1743
    .line 1744
    .line 1745
    .line 1746
    .line 1747
    .line 1748
    .line 1749
    .line 1750
    .line 1751
    .line 1752
    .line 1753
    .line 1754
    .line 1755
    .line 1756
    .line 1757
    .line 1758
    .line 1759
    .line 1760
    .line 1761
    .line 1762
    .line 1763
    .line 1764
    .line 1765
    .line 1766
    .line 1767
    .line 1768
    .line 1769
    .line 1770
    .line 1771
    .line 1772
    .line 1773
    .line 1774
    .line 1775
    .line 1776
    .line 1777
    .line 1778
    .line 1779
    .line 1780
    .line 1781
    .line 1782
    .line 1783
    .line 1784
    .line 1785
    .line 1786
    .line 1787
    .line 1788
    .line 1789
    .line 1790
    .line 1791
    .line 1792
    .line 1793
    .line 1794
    .line 1795
    .line 1796
    .line 1797
    .line 1798
    .line 1799
    .line 1800
    .line 1801
    .line 1802
    .line 1803
    .line 1804
    .line 1805
    .line 1806
    .line 1807
    .line 1808
    .line 1809
    .line 1810
    .line 1811
    .line 1812
    .line 1813
    .line 1814
    .line 1815
    .line 1816
    .line 1817
    .line 1818
    .line 1819
    .line 1820
    .line 1821
    .line 1822
    .line 1823
    .line 1824
    .line 1825
    .line 1826
    .line 1827
    .line 1828
    .line 1829
    .line 1830
    .line 1831
    .line 1832
    .line 1833
    .line 1834
    .line 1835
    .line 1836
    .line 1837
    .line 1838
    .line 1839
    .line 1840
    .line 1841
    .line 1842
    .line 1843
    .line 1844
    .line 1845
    .line 1846
    .line 1847
    .line 1848
    .line 1849
    .line 1850
    .line 1851
    .line 1852
    .line 1853
    .line 1854
    .line 1855
    .line 1856
    .line 1857
    .line 1858
    .line 1859
    .line 1860
    .line 1861
    .line 1862
    .line 1863
    .line 1864
    .line 1865
    .line 1866
    .line 1867
    .line 1868
    .line 1869
.end method

.method L(ZLjava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    invoke-static {p2, p3}, Lax/f3/d0;->G(Ljava/lang/String;Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    invoke-static {p2, p3}, Lax/f3/d0;->I(Ljava/lang/String;Ljava/lang/String;)Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    if-eqz p1, :cond_1

    .line 14
    .line 15
    :cond_0
    const/4 p1, 0x1

    .line 16
    return p1

    .line 17
    :cond_1
    const/4 p1, 0x0

    .line 18
    return p1
    .line 19
    .line 20
    .line 21
    .line 22
    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
    .line 34
    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    .line 77
    .line 78
    .line 79
    .line 80
    .line 81
    .line 82
    .line 83
    .line 84
    .line 85
    .line 86
    .line 87
.end method

.method protected M(Ljava/lang/Integer;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lax/Z2/e$j;->k:Lax/Z2/e;

    .line 2
    .line 3
    invoke-virtual {p1}, Lax/Z2/j;->e0()V

    .line 4
    .line 5
    .line 6
    return-void
    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method protected N(Ljava/lang/Integer;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    iget-object p1, p0, Lax/Z2/e$j;->k:Lax/Z2/e;

    .line 8
    .line 9
    invoke-static {p1}, Lax/Z2/e;->P1(Lax/Z2/e;)V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    const/16 v0, 0xb

    .line 14
    .line 15
    if-ne p1, v0, :cond_1

    .line 16
    .line 17
    iget-object p1, p0, Lax/Z2/e$j;->k:Lax/Z2/e;

    .line 18
    .line 19
    invoke-static {p1}, Lax/Z2/e;->I1(Lax/Z2/e;)Lcom/alphainventor/filemanager/file/n;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    iget-object v1, p0, Lax/Z2/e$j;->k:Lax/Z2/e;

    .line 24
    .line 25
    invoke-static {v1}, Lax/Z2/e;->w1(Lax/Z2/e;)Lcom/alphainventor/filemanager/file/n;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-static {p1, v0, v1}, Lax/Z2/e;->Q1(Lax/Z2/e;Lcom/alphainventor/filemanager/file/n;Lcom/alphainventor/filemanager/file/n;)V

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :cond_1
    iget-object v0, p0, Lax/Z2/e$j;->k:Lax/Z2/e;

    .line 34
    .line 35
    invoke-static {v0}, Lax/Z2/e;->I1(Lax/Z2/e;)Lcom/alphainventor/filemanager/file/n;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    iget-object v2, p0, Lax/Z2/e$j;->k:Lax/Z2/e;

    .line 40
    .line 41
    invoke-static {v2}, Lax/Z2/e;->w1(Lax/Z2/e;)Lcom/alphainventor/filemanager/file/n;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    invoke-static {v0, v1, v2, p1}, Lax/Z2/e;->R1(Lax/Z2/e;Lcom/alphainventor/filemanager/file/n;Lcom/alphainventor/filemanager/file/n;I)V

    .line 46
    .line 47
    .line 48
    return-void
    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
.end method

.method P(Lcom/alphainventor/filemanager/file/n;Lcom/alphainventor/filemanager/file/n;)Lax/Z2/e$h;
    .locals 3

    .line 1
    iget-object v0, p0, Lax/Z2/e$j;->k:Lax/Z2/e;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Lax/Z2/j;->j0(Z)V

    .line 5
    .line 6
    .line 7
    invoke-interface {p1}, Lax/f3/b;->isDirectory()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_2

    .line 12
    .line 13
    iget-object v0, p0, Lax/Z2/e$j;->k:Lax/Z2/e;

    .line 14
    .line 15
    invoke-static {v0, p1, p2}, Lax/Z2/e;->U0(Lax/Z2/e;Lcom/alphainventor/filemanager/file/n;Lcom/alphainventor/filemanager/file/n;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    invoke-direct {p0, p1, p2, p0}, Lax/Z2/e$j;->C(Lcom/alphainventor/filemanager/file/n;Lcom/alphainventor/filemanager/file/n;Lax/z3/c;)Lax/Z2/e$h;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    return-object p1

    .line 26
    :cond_0
    :try_start_0
    invoke-direct {p0, p1, p2}, Lax/Z2/e$j;->x(Lcom/alphainventor/filemanager/file/n;Lcom/alphainventor/filemanager/file/n;)V

    .line 27
    .line 28
    .line 29
    sget-object p1, Lax/Z2/e$h;->q:Lax/Z2/e$h;
    :try_end_0
    .catch Lax/e3/j; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    .line 31
    return-object p1

    .line 32
    :catch_0
    move-exception v0

    .line 33
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 34
    .line 35
    .line 36
    iget-object v0, p0, Lax/Z2/e$j;->k:Lax/Z2/e;

    .line 37
    .line 38
    invoke-virtual {p1}, Lcom/alphainventor/filemanager/file/n;->R()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    invoke-static {v0, v2}, Lax/Z2/e;->V0(Lax/Z2/e;Ljava/lang/String;)I

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    if-nez v0, :cond_1

    .line 47
    .line 48
    iget-object v2, p0, Lax/Z2/e$j;->k:Lax/Z2/e;

    .line 49
    .line 50
    invoke-static {v2, v1}, Lax/Z2/e;->W0(Lax/Z2/e;Z)Z

    .line 51
    .line 52
    .line 53
    :cond_1
    iget-object v1, p0, Lax/Z2/e$j;->k:Lax/Z2/e;

    .line 54
    .line 55
    invoke-virtual {p2}, Lcom/alphainventor/filemanager/file/n;->B()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p2

    .line 59
    invoke-static {v1, p1, p2, v0}, Lax/Z2/e;->w0(Lax/Z2/e;Lcom/alphainventor/filemanager/file/n;Ljava/lang/String;I)V

    .line 60
    .line 61
    .line 62
    sget-object p1, Lax/Z2/e$h;->X:Lax/Z2/e$h;

    .line 63
    .line 64
    return-object p1

    .line 65
    :cond_2
    invoke-direct {p0, p1, p2, p0}, Lax/Z2/e$j;->O(Lcom/alphainventor/filemanager/file/n;Lcom/alphainventor/filemanager/file/n;Lax/z3/c;)Lax/Z2/e$h;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    return-object p1
    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    .line 77
    .line 78
    .line 79
    .line 80
    .line 81
    .line 82
    .line 83
    .line 84
    .line 85
    .line 86
    .line 87
    .line 88
    .line 89
    .line 90
    .line 91
    .line 92
    .line 93
    .line 94
    .line 95
    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
.end method

.method public R(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lax/Z2/e$j;->j:Z

    .line 2
    .line 3
    return-void
    .line 4
    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method protected bridge synthetic g([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, [Ljava/lang/Void;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lax/Z2/e$j;->H([Ljava/lang/Void;)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method protected bridge synthetic p(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Integer;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lax/Z2/e$j;->M(Ljava/lang/Integer;)V

    .line 4
    .line 5
    .line 6
    return-void
    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method protected bridge synthetic q(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Integer;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lax/Z2/e$j;->N(Ljava/lang/Integer;)V

    .line 4
    .line 5
    .line 6
    return-void
    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method
