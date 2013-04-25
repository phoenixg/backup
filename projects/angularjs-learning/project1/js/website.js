angular.module('website', []).
    config(function($routeProvider){
        $routeProvider.
            when('/about', {templateUrl:'./partials/basic-template.html', controller:AboutCtrl}).
            when('/experiments', {templateUrl:'./partials/basic-template.html', controller:ExperimentsCtrl}).
            otherwise({redirectTo:'/home', templateUrl:'./partials/basic-template.html', controller:HomeCtrl});
    });

function MainCtrl($scope, $location){
    $scope.setRoute = function(route){
        $location.path(route);
    }
}

function AboutCtrl($scope) {
    $scope.title = 'About Page';
    $scope.body =  'This is the about page body';
}

function ExperimentsCtrl($scope) {
    $scope.title = 'Experiments Page';
    $scope.body =  'This is the Experiments page body';
}

function HomeCtrl($scope) {
    $scope.title = 'Home Page';
    $scope.body =  'This is the Home page body';
}
