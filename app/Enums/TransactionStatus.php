<?php

namespace App\Enums;

enum TransactionStatus: int
{
    case DRAFT = 0;
    case SAVED = 1;
}
