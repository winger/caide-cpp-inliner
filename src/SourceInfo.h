//                        Caide C++ inliner
//
// This file is distributed under the GNU General Public License as published by
// the Free Software Foundation, either version 3 of the License, or (at your
// option) any later version. See LICENSE.TXT for details.

#pragma once

#include <clang/Basic/SourceLocation.h>

#include <map>
#include <set>
#include <vector>


namespace clang {
    class Decl;
    class FunctionDecl;
    class VarDecl;
}

namespace caide {
namespace internal {

// Contains dependency graph and other information that DependenciesCollector passes to the next stage
struct SourceInfo {
    // key: Decl, value: what the key uses.
    std::map<clang::Decl*, std::set<clang::Decl*>> uses;

    // 'Roots of the dependency tree':
    // - int main()
    // - declarations marked with a comment '/// caide keep'
    std::set<clang::Decl*> declsToKeep;

    // Delayed parsed functions.
    std::vector<clang::FunctionDecl*> delayedParsedFunctions;
};

}
}

