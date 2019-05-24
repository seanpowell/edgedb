#
# This source file is part of the EdgeDB open source project.
#
# Copyright 2016-present MagicStack Inc. and the EdgeDB authors.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#


## Standard enum operators
## -----------------------


CREATE INFIX OPERATOR
std::`=` (l: std::anyenum, r: std::anyenum) -> std::bool {
    SET volatility := 'IMMUTABLE';
    FROM SQL OPERATOR r'=';
};


CREATE INFIX OPERATOR
std::`?=` (l: OPTIONAL std::anyenum, r: OPTIONAL std::anyenum) -> std::bool {
    SET volatility := 'IMMUTABLE';
    FROM SQL EXPRESSION;
};


CREATE INFIX OPERATOR
std::`!=` (l: std::anyenum, r: std::anyenum) -> std::bool {
    SET volatility := 'IMMUTABLE';
    FROM SQL OPERATOR r'<>';
};


CREATE INFIX OPERATOR
std::`?!=` (l: OPTIONAL std::anyenum, r: OPTIONAL std::anyenum) -> std::bool {
    SET volatility := 'IMMUTABLE';
    FROM SQL EXPRESSION;
};


CREATE INFIX OPERATOR
std::`>=` (l: std::anyenum, r: std::anyenum) -> std::bool {
    SET volatility := 'IMMUTABLE';
    FROM SQL OPERATOR '>=';
};


CREATE INFIX OPERATOR
std::`>` (l: std::anyenum, r: std::anyenum) -> std::bool {
    SET volatility := 'IMMUTABLE';
    FROM SQL OPERATOR '>';
};


CREATE INFIX OPERATOR
std::`<=` (l: std::anyenum, r: std::anyenum) -> std::bool {
    SET volatility := 'IMMUTABLE';
    FROM SQL OPERATOR '<=';
};


CREATE INFIX OPERATOR
std::`<` (l: std::anyenum, r: std::anyenum) -> std::bool {
    SET volatility := 'IMMUTABLE';
    FROM SQL OPERATOR '<';
};


## Boolean casts
## -------------

CREATE CAST FROM std::str TO std::anyenum {
    SET volatility := 'IMMUTABLE';
    FROM SQL CAST;
};


CREATE CAST FROM std::anyenum TO std::str {
    SET volatility := 'IMMUTABLE';
    FROM SQL CAST;
};
